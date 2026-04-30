Shader "Custom/URP_DecalUV2"
{
    Properties
    {
        _Color ("Main Color", Color) = (1,1,1,1)
        _DecalColor ("Decal Color", Color) = (1,1,1,1)
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _DecalTex ("Decal (RGBA)", 2D) = "black" {}
    }

    SubShader
    {
        Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" }

        Pass
        {
            Name "ForwardLit"
            Tags { "LightMode"="UniversalForward" }

            HLSLPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
                float2 uv         : TEXCOORD0;
                float2 uv2        : TEXCOORD1;
            };

            struct Varyings
            {
                float4 positionHCS : SV_POSITION;
                float2 uv          : TEXCOORD0;
                float2 uv2         : TEXCOORD1;
            };

            TEXTURE2D(_MainTex);
            SAMPLER(sampler_MainTex);

            TEXTURE2D(_DecalTex);
            SAMPLER(sampler_DecalTex);

            float4 _MainTex_ST;
            float4 _DecalTex_ST;

            float4 _Color;
            float4 _DecalColor;

            Varyings vert (Attributes IN)
            {
                Varyings OUT;
                OUT.positionHCS = TransformObjectToHClip(IN.positionOS.xyz);

                OUT.uv  = TRANSFORM_TEX(IN.uv, _MainTex);
                OUT.uv2 = TRANSFORM_TEX(IN.uv2, _DecalTex);

                return OUT;
            }

            half4 frag (Varyings IN) : SV_Target
            {
                half4 baseCol = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, IN.uv);
                half4 decal   = SAMPLE_TEXTURE2D(_DecalTex, sampler_DecalTex, IN.uv2);

                baseCol.rgb = lerp(baseCol.rgb, decal.rgb * _DecalColor.rgb, decal.a);
                baseCol *= _Color;

                return baseCol;
            }

            ENDHLSL
        }
    }
}