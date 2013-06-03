vs.1.1
dcl_position v0
dcl_normal	 v1
dcl_texcoord v2
dcl_texcoord1 v3

def c15, 1, 0, 0.5, 0
rcp r0.x, c14.x
mul r0.xyw, v0.z, r0.x
mov r2.xy, v0
mov r2.z, r0.xyxw
mov r1.xyz, c12
add r0.xyz, c13.xyz, -r1.xyz
mad r1.xyz, r2.xyz, r0.xyz, r1.xyz
mov r1.w, c15.x
dp4 r0.x, c4, r1
dp4 r0.y, c5, r1
dp4 r0.z, c6, r1
dp4 r0.w, c7, r1
dp4 oT0.x, c8, r0
dp4 oT0.y, c9, r0
dp4 oT0.z, c10, r0
mov oT1.x, c15.y
add oT1.y, r0.y, -c14.y
add oT2.xy, r0.xz, c15.z
dp4 oPos.x, c0, r0
dp4 oPos.y, c1, r0
dp4 oPos.z, c2, r0
dp4 oPos.w, c3, r0
