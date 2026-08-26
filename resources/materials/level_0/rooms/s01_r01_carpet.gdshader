shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform sampler2D albedo_texture : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D roughness_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D normal_texture : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D ao_texture : filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 carpet_tint : source_color = vec4(0.82, 0.75, 0.62, 1.0);
uniform vec2 uv_scale = vec2(0.82, 0.82);
uniform float saturation : hint_range(0.0, 1.0) = 0.16;
uniform float contrast : hint_range(0.0, 1.0) = 0.62;
uniform float normal_strength : hint_range(0.0, 1.0) = 0.48;

void fragment() {
	vec2 tiled_uv = UV * uv_scale;
	vec3 source_albedo = texture(albedo_texture, tiled_uv).rgb;
	float luminance = dot(source_albedo, vec3(0.2126, 0.7152, 0.0722));
	vec3 restrained = mix(vec3(luminance), source_albedo, saturation);
	restrained = mix(vec3(0.62), restrained, contrast);
	float source_roughness = texture(roughness_texture, tiled_uv).r;

	ALBEDO = restrained * carpet_tint.rgb;
	METALLIC = 0.0;
	ROUGHNESS = clamp(source_roughness * 1.18, 0.90, 1.0);
	SPECULAR = 0.06;
	NORMAL_MAP = texture(normal_texture, tiled_uv).rgb;
	NORMAL_MAP_DEPTH = normal_strength;
	AO = mix(1.0, texture(ao_texture, tiled_uv).r, 0.34);
}
