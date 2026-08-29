shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform sampler2D albedo_texture : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D roughness_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D normal_texture : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D ao_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 carpet_tint : source_color = vec4(0.95, 0.92, 0.84, 1.0);
uniform vec2 uv_scale = vec2(0.72, 0.72);
uniform float source_saturation : hint_range(0.0, 1.0) = 0.72;
uniform float normal_strength : hint_range(0.0, 1.0) = 0.54;

void fragment() {
	vec2 tiled_uv = UV * uv_scale;
	vec3 source_albedo = texture(albedo_texture, tiled_uv).rgb;
	float luminance = dot(source_albedo, vec3(0.2126, 0.7152, 0.0722));
	vec3 mildly_restrained = mix(vec3(luminance), source_albedo, source_saturation);
	float source_roughness = texture(roughness_texture, tiled_uv).r;

	ALBEDO = mildly_restrained * carpet_tint.rgb;
	METALLIC = 0.0;
	ROUGHNESS = clamp(source_roughness * 1.06, 0.88, 1.0);
	SPECULAR = 0.04;
	NORMAL_MAP = texture(normal_texture, tiled_uv).rgb;
	NORMAL_MAP_DEPTH = normal_strength;
	AO = mix(1.0, texture(ao_texture, tiled_uv).r, 0.18);
}
