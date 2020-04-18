varying highp vec2 v_uv0;
varying highp vec2 v_uv0Mov;
varying highp vec2 v_uv1Mov;

uniform sampler2D sampler0;
uniform sampler2D sampler1;

uniform vec3 u_color;
uniform float u_rain1alpha;
uniform float u_rain2alpha;

void main()
{
    vec4 DF = texture2D( gm_BaseTexture, v_uv0 );
    
    vec4 rain1 = texture2D( sampler0, v_uv0Mov );
    vec4 rain2 = texture2D( sampler0, v_uv1Mov );
    
    vec3 Complete = vec3(0.0, 0.0, 0.0);
    Complete = mix(DF.rgb, u_color, rain1.r*u_rain1alpha);
    Complete = mix(Complete.rgb, u_color, rain2.r*u_rain2alpha);
    
    gl_FragColor = vec4(Complete.rgb, 1.0);
}

