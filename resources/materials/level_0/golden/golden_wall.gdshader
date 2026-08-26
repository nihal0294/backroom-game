shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform sampler2D albedo_texture : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D normal_texture : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D orm_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 wall_tint : source_color = vec4(0.86, 0.82, 0.66, 1.0);
uniform vec2 uv_scale = vec2(0.8, 0.8);
uniform float saturation : hint_range(0.0, 1.0) = 0.32;
uniform float contrast : hint_range(0.0, 1.0) = 0.42;
uniform float roughness_multiplier : hint_range(0.0, 2.0) = 1.08;
uniform float normal_strength : hint_range(0.0, 2.0) = 0.42;
uniform float specular_level : hint_range(0.0, 1.0) = 0.12;

void fragment() {
	vec2 tiled_uv = UV * uv_scale;
	vec3 source_albedo = texture(albedo_texture, tiled_uv).rgb;
	float luminance = dot(source_albedo, vec3(0.2126, 0.7152, 0.0722));
	vec3 restrained = mix(vec3(luminance), source_albedo, saturation);
	restrained = mix(vec3(0.72), restrained, contrast);
	vec3 orm = texture(orm_texture, tiled_uv).rgb;

	ALBEDO = restrained * wall_tint.rgb;
	METALLIC = 0.0;
	ROUGHNESS = clamp(orm.g * roughness_multiplier, 0.82, 1.0);
	SPECULAR = specular_level;
	NORMAL_MAP = texture(normal_texture, tiled_uv).rgb;
	NORMAL_MAP_DEPTH = normal_strength;
	AO = mix(1.0, orm.r, 0.32);
}
