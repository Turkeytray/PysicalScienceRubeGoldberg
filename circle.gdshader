shader_type canvas_item;

float circle(vec2 position, float radius) {
	return smoothstep(-radius, -radius, -length(position - vec2(0.5)));
}

void fragment() {
	vec3 circleColor = vec3(circle(UV, 0.5)) * vec3(1, 1, 1 );
	float circleAlpha = circleColor[0] + circleColor[1] + circleColor[2];
	COLOR = vec4(circleColor, circleAlpha);
}
