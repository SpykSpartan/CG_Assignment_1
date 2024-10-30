Shader "Custom/ColorCorrectionshader"
{
    Properties
    {
        _MainTex ("Base Texture", 2D) = "white" {}
        _LUTTex ("LUT Texture", 2D) = "white" {}    // LUT texture
        _LUTSize ("LUT Size", Range(16, 128)) = 32  // Number of LUT colors per row
        _Intensity ("Intensity", Range(0, 1)) = 1.0 // LUT intensity
    }
    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata_t
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;      // Original image
            sampler2D _LUTTex;       // LUT texture
            float _LUTSize;          // LUT grid size
            float _Intensity;        // LUT blending intensity

            // Vertex shader
            v2f vert(appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            // Fragment shader
            fixed4 frag(v2f i) : SV_Target
            {
                // Sample the base color
                fixed4 col = tex2D(_MainTex, i.uv);

                // Convert the color to match the LUT
                col.rgb *= (_LUTSize - 1) / _LUTSize;

                // Calculate LUT coordinates
                float2 lutUV;
                lutUV.x = frac(col.r * _LUTSize);
                lutUV.y = frac(col.g * _LUTSize);

                // Sample the LUT color
                fixed4 lutColor = tex2D(_LUTTex, lutUV);

                // Blend the LUT effect with the original color based on intensity
                col.rgb = lerp(col.rgb, lutColor.rgb, _Intensity);

                return col;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}