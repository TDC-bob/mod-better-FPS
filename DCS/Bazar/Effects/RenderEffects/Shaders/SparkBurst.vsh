vs.1.1
dcl_position v0
dcl_normal	 v1

def c20, 0.25, 0.5, 0.75, 1
def c21, -24.9808, 60.1458, -85.4538, 64.9394
def c22, -19.7392, 1, -1, 0.159155
def c19, 2, 3.14159, 0, 3
mov a0.x, v0.x
mov r3, c[a0.x + 4]
mov oT0.x, r3
mov r2, c20
add r0.xzw, r3.y, r2.y
mov oT0.y, r0.xxzw
sge r0.y, v0.x, c19.z
sge r0.x, c19.z, v0.x
mul r0.z, r0.y, r0.x
sge r0.y, v0.x, c19.w
sge r0.x, c19.w, v0.x
mul r0.x, r0.y, r0.x
max r0.y, r0.z, r0.x
add r0.x, r2.w, -r0.y
mul r0.x, r0.x, r2.w
mad r0.x, r0.y, c19.z, r0.x
mul r0.xyz, c18.x, r0.x
mov oD0.w, r0.xyzx
mul r0.x, v1.x, c19.x
mul r0.x, r0.x, c19.y
mul r1, c22.w, r0.x
expp r1.y, r1.x
slt r6, r1.y, r2
add r0.xyz, r6.yzw, -r6.xyz
mov r6.yzw, r0.xxyz
dp3 r1.z, r6.yzw, r2.yyw
dp4 r1.w, r6, r2.xxzz
add r0.xy, r1.y, -r1.zw
mul r1.xyw, r0.xy, r0.xy
mul r0.xyz, r1.xy, r1.xy
mov r5.xz, r1.xyyw
mov r5.yw, r0.xxzy
dp4 r4.x, r6, c22.yzzy
dp4 r4.y, r6, c22.yyzz
mad r0, c21.xyxy, r5.yyww, c21.zwzw
mad r1, r0, r5.yyww, c22.xyxy
mad r0.xyw, r1.xz, r5.xz, r1.yw
mov r1.xz, r0.xyyw
mul r4.xy, r4.xy, r1.xz
mad r0.x, -v1.y, c14.x, r2.w
mad r0.x, -r0.x, r0.x, r2.w
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r1.x, r0.x, r4.x
mov r1.y, v1.y
mul r0.xy, r0.x, r4.y
mov r1.z, r0.xyxy
dp3 r0.x, r1.xyz, r1.xyz
rsq r0.x, r0.x
mul r0.xyz, r0.x, r1.xyz
dp3 r1.x, c15.xyz, r0.xyz
dp3 r1.y, c16.xyz, r0.xyz
dp3 r1.z, c17.xyz, r0.xyz
mov r0.y, c10.xxyz
add r0.x, c11.x, -r0.y
mad r0.x, v1.w, r0.x, r0.y
mul r6.xyz, r0.x, r1.xyz
add r0.x, v1.z, c9.x
expp r5.y, r0.x
mul r4.xyz, c12.xyz, r5.y
add r1.xyz, r6.xyz, r4.xyz
dp3 r0.x, r1.xyz, r1.xyz
rsq r0.w, r0.x
mul r1.xyz, r1.xyz, r0.w
mul r0.xyz, r4.xyz, r5.y
mul r0.xyz, r0.xyz, r2.y
mad r0.xyz, r6.xyz, r5.y, r0.xyz
add r5.xyz, c8.xyz, -r0.xyz
mul r4.xyz, r1.zxy, r5.yzx
mad r4.xyz, r1.yzx, r5.zxy, -r4.xyz
dp3 r1.w, r4.xyz, r4.xyz
rsq r1.w, r1.w
mul r5.xyz, r1.w, r4.xyz
mul r4.xy, r3.xy, c13.xy
mul r3.xyz, r4.y, r5.xyz
rcp r0.w, r0.w
mul r0.w, r0.w, r4.x
mad r1.xyz, r0.w, r1.xyz, r3.xyz
add r0.xyz, r0.xyz, r1.xyz
mov r0.w, r2.wxxw
dp4 oPos.x, c0, r0
dp4 oPos.y, c1, r0
dp4 oPos.z, c2, r0
dp4 oPos.w, c3, r0
