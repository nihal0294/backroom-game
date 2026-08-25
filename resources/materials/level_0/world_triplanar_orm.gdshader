shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_burley, specular_schlick_ggx;

uniform vec4 albedo : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform sampler2D texture_albedo : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D texture_orm : source_color, filter_linear_mipmap_anisotropic, repeat_enable;
uniform sampler2D texture_normal : hint_normal, filter_linear_mipmap_anisotropic, repeat_enable;

uniform float roughness : hint_range(0.0, 2.0) = 1.0;
uniform float metallic : hint_range(0.0, 1.0) = 0.0;
uniform float specular : hint_range(0.0, 1.0) = 0.4;
uniform float normal_scale : hint_range(-2.0, 2.0) = 1.0;
uniform float ao_light_affect : hint_range(0.0, 1.0) = 0.2;
uniform vec3 uv1_scale = vec3(0.5, 0.5, 0.5);
uniform float triplanar_sharpness : hint_range(1.0, 16.0) = 6.0;
uniform bool suppress_baked_lights = false;
uniform bool discard_downfacing = false;
uniform bool discard_upfacing = false;
uniform vec4 emission : source_color = vec4(0.0, 0.0, 0.0, 1.0);
uniform float emission_energy : hint_range(0.0, 20.0) = 0.0;

varying vec3 v_world_pos;
varying vec3 v_world_normal;

void vertex() {
	v_world_pos = (MODEL_MATRIX * vec4(VERTEX, 1.0)).xyz;
	v_world_normal = normalize(MODEL_NORMAL_MATRIX * NORMAL);
}

vec2 remap_lamp_uv(vec2 uv) {
	if (!suppress_baked_lights) {
		return uv;
	}
	vec4 c = texture(texture_albedo, uv);
	// Only the cyan baked panels, not the beige tiles (which are also bright).
	if ((c.b - c.r) > 0.045 && c.b > 0.62) {
		vec2 local = fract(uv * 6.0);
		return (vec2(0.0, 2.0) + clamp(local, vec2(0.12), vec2(0.88))) / 6.0;
	}
	return uv;
}

vec4 triplanar_sample(sampler2D tex, vec3 pos, vec3 nrm, vec3 scale) {
	vec3 blending = pow(abs(nrm), vec3(triplanar_sharpness));
	blending /= (blending.x + blending.y + blending.z + 1e-5);
	vec2 uvx = remap_lamp_uv(pos.zy * scale.zy);
	vec2 uvy = remap_lamp_uv(pos.xz * scale.xz);
	vec2 uvz = remap_lamp_uv(pos.xy * scale.xy);
	return texture(tex, uvx) * blending.x + texture(tex, uvy) * blending.y + texture(tex, uvz) * blending.z;
}

void fragment() {
	vec3 n = normalize(v_world_normal);
	if (discard_downfacing && n.y < -0.35) {
		discard;
	}
	if (discard_upfacing && n.y > 0.35) {
		discard;
	}
	vec4 alb = triplanar_sample(texture_albedo, v_world_pos, n, uv1_scale);
	ALBEDO = albedo.rgb * alb.rgb;
	vec4 orm = triplanar_sample(texture_orm, v_world_pos, n, uv1_scale);
	ROUGHNESS = clamp(orm.g * roughness, 0.38, 1.0);
	METALLIC = metallic;
	SPECULAR = specular;
	AO = orm.r;
	AO_LIGHT_AFFECT = ao_light_affect;
	vec4 ntex = triplanar_sample(texture_normal, v_world_pos, n, uv1_scale);
	NORMAL_MAP = ntex.rgb;
	NORMAL_MAP_DEPTH = normal_scale;
	EMISSION = emission.rgb * emission_energy;
}
