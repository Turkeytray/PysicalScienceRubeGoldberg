shader_type canvas_item;

float circle(vec2 position, float radius) {
	return smoothstep(radius, radius, dot(position, position) * 4.0);
}

void fragment() {
	COLOR.rgb = vec3(circle(UV, 1));
}