Shader "Custom/TextureAmbientDiffuse"
{
    Properties
    {
        _Color("Color", Color) = (1.0, 1.0, 1.0)
        _MainTex("Main Texture", 2D) = "white" {} 
    }

    SubShader
    {
        Tags { "LightMode" = "ForwardBase" }
        LOD 200

        CGPROGRAM
        #pragma surface surf Lambert

        sampler2D _MainTex; 
        fixed4 _Color; 

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf(Input IN, inout SurfaceOutput o)
        {
            fixed4 texColor = tex2D(_MainTex, IN.uv_MainTex);
            o.Albedo = texColor.rgb * _Color.rgb;
            o.Alpha = texColor.a * _Color.a;
        }
        ENDCG
    }
    Fallback "Diffuse" 
}
