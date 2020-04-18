uniform sampler2D sampler0;

uniform float u_distAmount;

varying vec2 v_uv0;
varying vec2 v_uv0Ratio;

void main()
{    
    vec4 NM = texture2D( sampler0, v_uv0Ratio );
    
    vec2 newUv = v_uv0 + ((NM.rg * 2.0 - 1.0) * u_distAmount);
    
    vec4 DF   = texture2D( gm_BaseTexture, newUv) + NM.b;
    
    gl_FragColor = vec4(DF.rgb, 1.0);
}

