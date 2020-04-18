attribute vec3 in_Position;
attribute highp vec2 in_TextureCoord;

uniform float u_vRatio;
uniform vec2 u_speed1;
uniform vec2 u_speed2;
uniform vec2 u_scale1;
uniform vec2 u_scale2;
uniform float u_time;

varying highp vec2 v_uv0;
varying highp vec2 v_uv0Mov;
varying highp vec2 v_uv1Mov;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;
    
    v_uv0Mov    = (in_TextureCoord + fract(u_speed1 * u_time)) * vec2(1.0, u_vRatio);
    v_uv0Mov   *= u_scale1;
    
    v_uv1Mov    = (in_TextureCoord + fract(u_speed2 * u_time)) * vec2(1.0, u_vRatio);
    v_uv1Mov   *= u_scale2;
}

