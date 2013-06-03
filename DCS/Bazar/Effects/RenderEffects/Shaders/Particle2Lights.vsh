vs.1.1
dcl_position v0
dcl_psize	 v1
dcl_color	 v2
dcl_texcoord v3

def c24, 0, 1, 0, 0
def c23, 0.5, 0, 0, 0
mov oD1.xyz, c18
mov r1.w, c23.x
mov a0.x, v3.x
add r2, c[a0.x + 4].xy, r1.w
mov oT1.xy, r2
mul r0.xyz, v0.xyz, c22.x
mad r0, r2.xy, c21.x, r0.xyz
mov oT0.xy, r0
add oT0.z, r0.z, c20.x
add r0.yzw, v0.xxyz, -c8.xxyz
dp3 r0.x, r0.yzw, r0.yzw
rsq r0.x, r0.x
mul r3.xyz, r0.x, r0.yzw
mul r0.xyz, c24.xxy, r3.yzx
mad r0.yzw, c24.yyxx, r3.zzxy, -r0.xxyz
dp3 r0.x, r0.yzw, r0.yzw
rsq r0.x, r0.x
mul r2.xyz, r0.x, r0.yzw
mul r0.xyz, r3.zxy, r2.yzx
mad r0.yzw, r3.yyzx, r2.zzxy, -r0.xxyz
dp3 r0.x, r0.yzw, r0.yzw
rsq r0.x, r0.x
mul r1.xyz, r0.x, r0.yzw
mul r0.xyz, r1.xyz, c[a0.x + 4].y
mad r0.xyz, r2.xyz, c[a0.x + 4].x, r0.xyz
mul r0.xyz, r0.xyz, v1.x
mad r0, r0.xyz, c13.x, v0.xyz
add r4.xyz, c16.xyz, -r0.xyz
dp3 r2.w, r4.xyz, r4.xyz
rsq r2.w, r2.w
mul r5.xyz, r4.xyz, r2.w
dp3 r4.x, r2.xyz, r5.xyz
dp3 r4.y, r1.xyz, r5.xyz
dp3 r4.z, r3.xyz, r5.xyz
mad oT2.xyz, r4.xyz, r1.w, r1.w
dp3 r2.x, r2.xyz, c19.xyz
dp3 r2.y, r1.xyz, c19.xyz
dp3 r2.z, r3.xyz, c19.xyz
mad oT3.xyz, r2.xyz, r1.w, r1.w
rcp r1.z, r2.w
mul r1.y, c17.z, r1.z
mad r1.x, c17.y, r1.z, c17.x
mad r1.x, r1.y, r1.z, r1.x
rcp r1.x, r1.x
mul oD0.xyz, c15.xyz, r1.x
mov oD0.w, c14.x
mov r0.w, c24.yxxy
dp4 oPos.x, c0, r0
dp4 oPos.y, c1, r0
dp4 oPos.z, c2, r0
dp4 oPos.w, c3, r0
