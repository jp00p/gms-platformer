attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

uniform highp float u_vRatio;
uniform highp float u_speed;
uniform highp float u_time;
uniform highp float u_fogScale;

varying highp vec2 v_uv0;
varying highp vec2 v_uv0Mov;
varying highp vec2 v_uv0Ratio;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
        
    v_uv0       = in_TextureCoord;    
    v_uv0Ratio  = in_TextureCoord * vec2(1.0, u_vRatio);
    v_uv0Mov    = (in_TextureCoord + vec2(u_speed,0.0) * u_time) * vec2(1.0, u_vRatio);
    v_uv0Mov.x *= u_fogScale; //stretch the fog
}

