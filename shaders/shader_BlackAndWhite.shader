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
// Black and White shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_time;

void main()
{
    vec2 Coord = v_vTexcoord + vec2( cos( v_vTexcoord.y * 4.0 + u_time * 2.0 * 3.14156 ) / 200.0, 0 );
    vec4 OriginalColour = texture2D( gm_BaseTexture, v_vTexcoord );
    float R = OriginalColour.r;
    float G = OriginalColour.g;
    float B = OriginalColour.b;
    float A = 1.0;
    vec3 Colour = vec3((R + G + B) / (1.0 - sin(u_time) * 0.5));
    gl_FragColor = vec4(Colour, A) * texture2D( gm_BaseTexture, Coord );
}

