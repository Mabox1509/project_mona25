//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 uColor;

void main()
{
	float _a = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )).a;
	
	gl_FragColor = vec4(uColor, _a);
}
