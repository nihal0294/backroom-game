shader_type spatial;
render_mode cull_disabled;

uniform sampler2D wood_atlas : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform vec4 wood_tint : source_color = vec4(0.72, 0.62, 0.43, 1.0);


void fragment() {
	// The source is a baked atlas. This stable strip contains the same pale
	// timber used by the VR model for low wall trim and door framing.
	vec2 strip_uv = vec2(
		mix(0.025, 0.115, fract(UV.y)),
		mix(0.02, 0.98, fract(UV.x * 0.22))
	);
	vec3 sampled_wood = texture(wood_atlas, strip_uv).rgb;
	ALBEDO = sampled_wood * wood_tint.rgb;
	ROUGHNESS = 0.82;
	SPECULAR = 0.22;
}
