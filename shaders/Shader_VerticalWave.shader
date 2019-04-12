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
// Simple passthrough fragment shader
// Author: Sajid Al Sanai
// Title: Vertical Wave

#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float plot(vec2 st, float pct){
  return  smoothstep( pct - 0.02, pct, st.y) -
          smoothstep( pct, pct + 0.02, st.y);
}

void main() {
    vec2 st = texture2D( gm_BaseTexture, v_vTexcoord ).xy / u_resolution;
    
    float y = 1.0 - abs(sin(u_time + 50.0 * (-(st.x - 0.5) * (st.x - 0.5))));
    float x = abs(sin(u_time + 5.0 * (-(y - 0.5) * (y - 0.5))));
    //float y = fract(abs(sin(st.x * PI + u_time)));
    //float y = smoothstep(0.2, 0.5, sin(PI * st.x + u_time)) - smoothstep(0.5, 0.8, sin(PI * st.x + u_time));

    vec3 color = vec3(y, 0.5, x);

    float pct = plot(st, y);
    //color = (1.0 - pct) * color + pct * vec3(1.0, 1.0, 0.0);
    
    gl_FragColor = vec4(color, 1.0);
}

/*void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}*/
