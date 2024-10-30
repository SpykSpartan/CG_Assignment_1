Shader "Custom/HologramShader"
{
    Properties
    {
        _RimColor ("Rim Color", Color) = (0,0.5,0.5,0.0)
        _RimePower("Rim Power", Range(0.5,8.0)) = 3.0
    }
    SubShader{
        Tags{"Queue" = "Transparent"}

        Pass {
            ZWrite On
            ColorMask 0
        }

        CGPROGRAM
        #pragma surface surf Lambert alpha:fase

        struct Input {
            float3 viewDir;
        };

        float4 _RimColor;
        float _RimePower;

        void surf (Input IN, inout SurfaceOutput o) {
            half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));
            o.Emission = _RimColor.rgb * pow (rim, _RimePower) * 10;
            o.Alpha = pow(rim, _RimePower);
        }
        ENDCG
    }
    FallBack "Diffuse"
}
