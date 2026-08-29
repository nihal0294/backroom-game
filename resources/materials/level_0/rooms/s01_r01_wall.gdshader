shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform sampler2D albedo_texture : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D normal_texture : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D orm_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 wall_tint : source_color = vec4(1.0, 0.93, 0.58, 1.0);
uniform vec2 uv_scale = vec2(0.16, 0.16);
uniform float source_saturation : hint_range(0.0, 1.0) = 0.55;
uniform float pattern_contrast : hint_range(0.0, 1.0) = 0.68;
uniform vec4 pattern_midpoint : source_color = vec4(0.80, 0.812, 0.667, 1.0);
uniform float normal_strength : hint_range(0.0, 1.0) = 0.28;

void fragment() {
	vec2 tiled_uv = UV * uv_scale;
	vec3 source_albedo = texture(albedo_texture, tiled_uv).rgb;
	vec3 source_orm = texture(orm_texture, tiled_uv).rgb;
	float source_luminance = dot(source_albedo, vec3(0.2126, 0.7152, 0.0722));
	vec3 restrained = mix(vec3(source_luminance), source_albedo, source_saturation);
	vec3 softened_pattern = mix(pattern_midpoint.rgb, restrained, pattern_contrast);

	ALBEDO = softened_pattern * wall_tint.rgb;
	METALLIC = 0.0;
	ROUGHNESS = clamp(source_orm.g * 1.04, 0.84, 1.0);
	SPECULAR = 0.08;
	NORMAL_MAP = texture(normal_texture, tiled_uv).rgb;
	NORMAL_MAP_DEPTH = normal_strength;
	AO = mix(1.0, source_orm.r, 0.14);
}
