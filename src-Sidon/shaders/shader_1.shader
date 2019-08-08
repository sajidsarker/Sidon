//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~

//
// Simple passthrough fragment shader
//

#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution;
uniform float u_time;

float plot(vec2 st, float pct){
  return  smoothstep( pct - 0.02, pct, st.y) -
          smoothstep( pct, pct + 0.02, st.y);
}

void main() {
    //vec2 st = gl_FragCoord.xy / u_resolution;
    vec2 Coord  = v_vTexcoord + vec2( cos( v_vTexcoord.y * 5.0 + u_time * 2.0 * PI ) / 50.0, 0 );
    vec2 st = Coord.xy / u_resolution;
    
    float y = abs(sin(u_time + 50.0 * (-(st.x - 0.5) * (st.x - 0.5))));

    vec3 Colour = vec3(y, 0.5, st.x);

    //float pct = plot(st, y);
    
    gl_FragColor = vec4(Colour, 1.0) * texture2D( gm_BaseTexture, Coord );
}
