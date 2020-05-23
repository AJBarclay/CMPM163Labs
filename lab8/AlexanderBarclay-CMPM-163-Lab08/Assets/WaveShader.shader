Shader "Custom/Waves"
{
    Properties
    {
        _Color("Color", Color) = (0, 0, 0, .5)
        _Strength("Strength", Range(0,2)) = 1.0
        _Speed("Speed", Range(-200, 200)) = 100
    }
    
    
    SubShader
    {
        Tags
        {
            "Queue" = "transparent"
            "RenderType" = "transparent"
        }
            
        Pass
        {
        Cull Off
        
            
        CGPROGRAM
            
            
        #pragma vertex vertexFunction
        #pragma fragment fragmentFunction
            
        float4 _Color;
        float _Strength;
        float _Speed;
        
        struct vertexInput
        {
            float4 vertex : POSITION;
        };
        
        struct vertexOutput
        {
            float4 pos : SV_POSITION;
        };
        
        vertexOutput vertexFunction(vertexInput IN)
        {
            vertexOutput o;
            
            float4 worldPos = mul(unity_ObjectToWorld, IN.vertex);
            
            float displacement = (cos(worldPos.y) + cos(worldPos.x + (_Speed * _Time)) + cos(worldPos.z + (_Speed * _Time)));
            worldPos.y = worldPos.y + (displacement * _Strength);
            
            o.pos = mul(UNITY_MATRIX_VP, worldPos);
            
            return o;
        }
        
        float4 fragmentFunction(vertexOutput IN) : COLOR
        {
            return _Color;
        }
        
        
        ENDCG
        }
    }
}
