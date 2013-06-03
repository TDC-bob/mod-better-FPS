vs.1.1
dcl_position v0
dcl_psize	 v1
dcl_color	 v2
dcl_texcoord v3

def c16, 0, 1, 0, 0
def c15, 0.5, 0, 0, 0
mov a0.x, v3.x
mov r0.xy, c[a0.x + 4]
add oT1.xy, r0.xy, c15.x
add r1.xyz, v0.xyz, -c8.xyz
dp3 r0.z, r1.xyz, r1.xyz
rsq r0.z, r0.z
mul r3.xyz, r0.z, r1.xyz
mul r1.xyz, c16.xxy, r3.yzx
mad r1.xyz, c16.yxx, r3.zxy, -r1.xyz
dp3 r0.z, r1.xyz, r1.xyz
rsq r0.z, r0.z
mul r2.xyz, r0.z, r1.xyz
mul r1.xyz, r3.zxy, r2.yzx
mad r1.xyz, r3.yzx, r2.zxy, -r1.xyz
dp3 r0.z, r1.xyz, r1.xyz
rsq r0.z, r0.z
mul r1.xyz, r0.z, r1.xyz
mul r1.xyz, r1.xyz, r0.y
mad r0.xyz, r2.xyz, r0.x, r1.xyz
mul r0.xyz, r0.xyz, v1.x
mad r0.xyz, r0.xyz, c13.x, v0.xyz
mov r0.w, c16.yxxy
dp4 oT0.x, c9, r0
dp4 oT0.y, c10, r0
dp4 oT0.z, c11, r0
mov oD0.xyz, c16.yyyx
mul oD0.w, c14.x, v2.x
dp4 oPos.x, c0, r0
dp4 oPos.y, c1, r0
dp4 oPos.z, c2, r0
dp4 oPos.w, c3, r0
