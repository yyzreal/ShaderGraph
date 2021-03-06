// UNITY_SHADER_NO_UPGRADE
#ifndef UNITY_SHADER_GRAPH_INCLUDED
#define UNITY_SHADER_GRAPH_INCLUDED

bool IsGammaSpace()
{
    #ifdef UNITY_COLORSPACE_GAMMA
        return true;
    #else
        return false;
    #endif
}

float4 ComputeScreenPos (float4 pos, float projectionSign) 
{
  float4 o = pos * 0.5f;
  o.xy = float2(o.x, o.y * projectionSign) + o.w;
  o.zw = pos.zw;
  return o;
}

#endif // UNITY_SHADER_GRAPH_INCLUDED
