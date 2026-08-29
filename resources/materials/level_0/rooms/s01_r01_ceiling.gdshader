shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform sampler2D tile_atlas : source_color, filter_linear_mipmap_anisotropic, repeat_disable;
uniform sampler2D roughness_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D normal_texture : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 ceiling_tint : source_color = vec4(0.88, 0.82, 0.58, 1.0);
uniform vec4 divider_color : source_color = vec4(0.30, 0.28, 0.17, 1.0);
uniform vec2 texture_scale = vec2(0.62, 0.62);
uniform float module_size_m : hint_range(0.3, 1.2) = 0.60;
uniform float divider_half_width_m : hint_range(0.004, 0.03) = 0.008;
uniform float dirty_block_rate : hint_range(0.0, 0.4) = 0.14;
uniform float normal_strength : hint_range(0.0, 1.0) = 0.18;
uniform float indirect_emission : hint_range(0.0, 2.0) = 1.20;

// One panel interior from the clean and dirty quarters of backrooms.png.
// The GLB tile UVs prove that each quarter is the source ceiling block; the
// small inset removes its baked grid so only the metric divider below remains.
const vec2 ATLAS_CLEAN_ORIGIN = vec2(0.0015, 0.3355);
const vec2 ATLAS_DIRTY_ORIGIN = vec2(0.2516, 0.3355);
const vec2 ATLAS_CELL_SCALE = vec2(0.0245, 0.0327);

float hash21(vec2 value) {
	value = fract(value * vec2(123.34, 456.21));
	value += dot(value, value + 45.32);
	return fract(value.x * value.y);
}

void fragment() {
	vec2 texture_uv = UV * texture_scale;
	vec2 tile_cell = floor(UV / module_size_m);
	vec2 tile_local_uv = fract(UV / module_size_m);
	float tile_hash = hash21(tile_cell);
	if (hash21(tile_cell + vec2(17.0, 31.0)) < 0.5) {
		tile_local_uv.x = 1.0 - tile_local_uv.x;
	}
	if (hash21(tile_cell + vec2(47.0, 11.0)) < 0.5) {
		tile_local_uv.y = 1.0 - tile_local_uv.y;
	}
	vec2 atlas_origin = tile_hash < dirty_block_rate ? ATLAS_DIRTY_ORIGIN : ATLAS_CLEAN_ORIGIN;
	vec3 tile_albedo = texture(tile_atlas, atlas_origin + tile_local_uv * ATLAS_CELL_SCALE).rgb;
	tile_albedo *= 1.0 + (hash21(tile_cell + vec2(5.0, 73.0)) - 0.5) * 0.035;
	float source_roughness = texture(roughness_texture, texture_uv).r;
	vec2 module_uv = tile_local_uv;
	vec2 edge_distance = min(module_uv, vec2(1.0) - module_uv) * module_size_m;
	float nearest_edge = min(edge_distance.x, edge_distance.y);
	float edge_aa = max(fwidth(nearest_edge), 0.001);
	float divider = 1.0 - smoothstep(divider_half_width_m - edge_aa, divider_half_width_m + edge_aa, nearest_edge);

	vec3 ceiling_color = mix(tile_albedo * ceiling_tint.rgb, divider_color.rgb, divider);
	ALBEDO = ceiling_color;
	METALLIC = 0.0;
	ROUGHNESS = clamp(source_roughness * 1.02, 0.82, 1.0);
	SPECULAR = 0.06;
	NORMAL_MAP = texture(normal_texture, texture_uv).rgb;
	NORMAL_MAP_DEPTH = normal_strength;
	EMISSION = ceiling_color * indirect_emission;
}
