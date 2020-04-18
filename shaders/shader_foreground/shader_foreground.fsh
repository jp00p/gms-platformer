varying vec2 v_uv0;
varying vec2 v_uv0Mov;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_color;

void main()
{
    vec4 DF         = texture2D( gm_BaseTexture, v_uv0 );
    
    vec4 FG        = texture2D( sampler0, v_uv0Mov );
    
    vec3 Complete = mix(DF.rgb, u_color, FG.r);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}

