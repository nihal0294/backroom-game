shader_type spatial;
render_mode cull_disabled, diffuse_burley, specular_schlick_ggx;

uniform vec4 panel_color : source_color = vec4(0.75, 0.73, 0.65, 1.0);
uniform vec4 seam_color : source_color = vec4(0.43, 0.42, 0.38, 1.0);
uniform vec2 panel_size = vec2(1.2, 0.6);
uniform float seam_width = 0.018;

float hash21(vec2 p) {
	p = fract(p * vec2(123.34, 456.21));
	p += dot(p, p + 45.32);
	return fract(p.x * p.y);
}

void fragment() {
	vec2 cell_uv = fract(UV / panel_size);
	vec2 edge_distance = min(cell_uv, vec2(1.0) - cell_uv) * panel_size;
	float nearest_edge = min(edge_distance.x, edge_distance.y);
	float edge_aa = max(fwidth(nearest_edge), 0.0005);
	float seam = 1.0 - smoothstep(seam_width - edge_aa, seam_width + edge_aa, nearest_edge);
	seam *= clamp(seam_width / edge_aa, 0.0, 1.0);
	float variation = (hash21(floor(UV / panel_size)) - 0.5) * 0.025;

	ALBEDO = mix(panel_color.rgb + vec3(variation), seam_color.rgb, seam);
	METALLIC = 0.0;
	ROUGHNESS = 0.94;
	SPECULAR = 0.08;
}
