#ifndef UNIVERSAL_SIMPLELIT_UVSCROLL_LIGHTMAP_INPUT_INCLUDED
#define UNIVERSAL_SIMPLELIT_UVSCROLL_LIGHTMAP_INPUT_INCLUDED

#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/SurfaceInput.hlsl"
#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"

CBUFFER_START(UnityPerMaterial)
    float4 _BaseMap_ST;
    float4 _LightMapTex_ST;
    half4 _BaseColor;
    half4 _LightMapColor;
    half4 _SpecColor;
    half4 _EmissionColor;
    half _Cutoff;
    half _Surface;
    // UV Scroll Parameters
    float2 _ScrollSpeed;
    float _TimeSpeed;
    float _Type;
    float2 _Step;
    float2 _SecPerStep;
    UNITY_TEXTURE_STREAMING_DEBUG_VARS;
CBUFFER_END

#ifdef UNITY_DOTS_INSTANCING_ENABLED
UNITY_DOTS_INSTANCING_START(MaterialPropertyMetadata)
    UNITY_DOTS_INSTANCED_PROP(float4, _BaseColor)
    UNITY_DOTS_INSTANCED_PROP(float4, _LightMapColor)
    UNITY_DOTS_INSTANCED_PROP(float4, _SpecColor)
    UNITY_DOTS_INSTANCED_PROP(float4, _EmissionColor)
    UNITY_DOTS_INSTANCED_PROP(float , _Cutoff)
    UNITY_DOTS_INSTANCED_PROP(float , _Surface)
    // UV Scroll Parameters
    UNITY_DOTS_INSTANCED_PROP(float2, _ScrollSpeed)
    UNITY_DOTS_INSTANCED_PROP(float , _TimeSpeed)
    UNITY_DOTS_INSTANCED_PROP(float , _Type)
    UNITY_DOTS_INSTANCED_PROP(float2, _Step)
    UNITY_DOTS_INSTANCED_PROP(float2, _SecPerStep)
UNITY_DOTS_INSTANCING_END(MaterialPropertyMetadata)

static float4 unity_DOTS_Sampled_BaseColor;
static float4 unity_DOTS_Sampled_LightMapColor;
static float4 unity_DOTS_Sampled_SpecColor;
static float4 unity_DOTS_Sampled_EmissionColor;
static float  unity_DOTS_Sampled_Cutoff;
static float  unity_DOTS_Sampled_Surface;
// UV Scroll Parameters
static float2 unity_DOTS_Sampled_ScrollSpeed;
static float  unity_DOTS_Sampled_TimeSpeed;
static float  unity_DOTS_Sampled_Type;
static float2 unity_DOTS_Sampled_Step;
static float2 unity_DOTS_Sampled_SecPerStep;

void SetupDOTSSimpleLitMaterialPropertyCaches()
{
    unity_DOTS_Sampled_BaseColor     = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float4 , _BaseColor);
    unity_DOTS_Sampled_LightMapColor = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float4 , _LightMapColor);
    unity_DOTS_Sampled_SpecColor     = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float4 , _SpecColor);
    unity_DOTS_Sampled_EmissionColor = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float4 , _EmissionColor);
    unity_DOTS_Sampled_Cutoff        = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float  , _Cutoff);
    unity_DOTS_Sampled_Surface       = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float  , _Surface);
    // UV Scroll Parameters
    unity_DOTS_Sampled_ScrollSpeed   = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float2 , _ScrollSpeed);
    unity_DOTS_Sampled_TimeSpeed     = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float  , _TimeSpeed);
    unity_DOTS_Sampled_Type          = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float  , _Type);
    unity_DOTS_Sampled_Step          = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float2 , _Step);
    unity_DOTS_Sampled_SecPerStep    = UNITY_ACCESS_DOTS_INSTANCED_PROP_WITH_DEFAULT(float2 , _SecPerStep);
}

#undef UNITY_SETUP_DOTS_MATERIAL_PROPERTY_CACHES
#define UNITY_SETUP_DOTS_MATERIAL_PROPERTY_CACHES() SetupDOTSSimpleLitMaterialPropertyCaches()

#define _BaseColor          unity_DOTS_Sampled_BaseColor
#define _LightMapColor      unity_DOTS_Sampled_LightMapColor
#define _SpecColor          unity_DOTS_Sampled_SpecColor
#define _EmissionColor      unity_DOTS_Sampled_EmissionColor
#define _Cutoff             unity_DOTS_Sampled_Cutoff
#define _Surface            unity_DOTS_Sampled_Surface
// UV Scroll Parameters
#define _ScrollSpeed        unity_DOTS_Sampled_ScrollSpeed
#define _TimeSpeed          unity_DOTS_Sampled_TimeSpeed
#define _Type               unity_DOTS_Sampled_Type
#define _Step               unity_DOTS_Sampled_Step
#define _SecPerStep         unity_DOTS_Sampled_SecPerStep

#endif

TEXTURE2D(_SpecGlossMap);       SAMPLER(sampler_SpecGlossMap);
TEXTURE2D(_LightMapTex);       SAMPLER(sampler_LightMapTex);

half4 SampleSpecularSmoothness(float2 uv, half alpha, half4 specColor, TEXTURE2D_PARAM(specMap, sampler_specMap))
{
    half4 specularSmoothness = half4(0, 0, 0, 1);
#ifdef _SPECGLOSSMAP
    specularSmoothness = SAMPLE_TEXTURE2D(specMap, sampler_specMap, uv) * specColor;
#elif defined(_SPECULAR_COLOR)
    specularSmoothness = specColor;
#endif

#ifdef _GLOSSINESS_FROM_BASE_ALPHA
    specularSmoothness.a = alpha;
#endif

    return specularSmoothness;
}

inline void InitializeLightMapSurfaceData(float2 uv, float2 uv2, out SurfaceData outSurfaceData)
{
    outSurfaceData = (SurfaceData)0;

    // ベーステクスチャサンプリング（UV1）
    half4 albedoAlpha = SampleAlbedoAlpha(uv, TEXTURE2D_ARGS(_BaseMap, sampler_BaseMap));
    
    // セカンダリテクスチャサンプリング（UV2）
    half4 lightMapColor = SAMPLE_TEXTURE2D(_LightMapTex, sampler_LightMapTex, uv2);
    
    // アルファブレンド処理（マルチテクスチャブレンド）
    albedoAlpha.rgb = albedoAlpha.rgb * lightMapColor.rgb * _LightMapColor.rgb;

    outSurfaceData.alpha = albedoAlpha.a * _BaseColor.a;
    outSurfaceData.alpha = AlphaDiscard(outSurfaceData.alpha, _Cutoff);

    outSurfaceData.albedo = albedoAlpha.rgb * _BaseColor.rgb;
    outSurfaceData.albedo = AlphaModulate(outSurfaceData.albedo, outSurfaceData.alpha);

    half4 specularSmoothness = SampleSpecularSmoothness(uv, outSurfaceData.alpha, _SpecColor, TEXTURE2D_ARGS(_SpecGlossMap, sampler_SpecGlossMap));
    outSurfaceData.metallic = 0.0; // unused
    outSurfaceData.specular = specularSmoothness.rgb;
    outSurfaceData.smoothness = specularSmoothness.a;
    outSurfaceData.normalTS = SampleNormal(uv, TEXTURE2D_ARGS(_BumpMap, sampler_BumpMap));
    outSurfaceData.occlusion = 1.0;
    outSurfaceData.emission = SampleEmission(uv, _EmissionColor.rgb, TEXTURE2D_ARGS(_EmissionMap, sampler_EmissionMap));
}

#endif
