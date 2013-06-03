vs.1.1
dcl_position v0
dcl_texcoord v1
dcl_texcoord1 v2
dcl_texcoord2 v3

def c30, 0.25, 1, 0.2, 0.8
def c31, 20, 10, 25, 150
def c32, 0, 1, 0, 0
def c34, 0.5, 0.5, 0, 0
def c35, 0.25, 0.5, 0.75, 1
def c36, -24.9808, 60.1458, -85.4538, 64.9394
def c37, -19.7392, 1, -1, 0.159155
def c33, 2, 64, 0, 0
add r0.x, v2.x, c12.x
expp r1.y, r0.x
mov r0, c30
mad r1.x, r1.y, r0.w, r0.z
mul r1.x, c17.x, r1.x
mul r1.z, r1.x, c24.x
mul r2.xy, c18.xy, c18.z
mul r2.xy, r2.xy, r1.y
mad r1.x, v3.x, c31.x, c31.y
mul r2.xy, r2.xy, r1.x
mul r2.xy, r2.xy, c31.z
mad r2.xy, v0.xy, r1.z, r2.xy
mul r2.xyw, r2.xy, c24.x
add r1.x, r1.y, r0.x
mul r1.x, r1.x, v3.x
mul r1.w, r1.x, c31.w
add r1.x, c18.z, r0.x
mul r2.z, r1.w, r1.x
mul r1.w, r1.y, c16.x
add r1.x, r0.y, -c18.z
mad r1.x, r1.w, r1.x, r2.z
mul r6.y, r1.x, c24.x
mov r6.xz, r2.xyyw
add r2.xyz, r6.xyz, -c25.xyz
dp3 r1.x, r2.xyz, r2.xyz
rsq r1.x, r1.x
mul r5.xyz, r1.x, r2.xyz
mul r2.xyz, c32.xxy, r5.yzx
mad r2.xyz, c32.yxx, r5.zxy, -r2.xyz
dp3 r1.w, r2.xyz, r2.xyz
rsq r1.w, r1.w
mul r4.xyz, r1.w, r2.xyz
mul r2.xyz, r5.zxy, r4.yzx
mad r2.xyz, r5.yzx, r4.zxy, -r2.xyz
dp3 r1.w, r2.xyz, r2.xyz
rsq r1.w, r1.w
mul r3.xyz, r1.w, r2.xyz
mov a0.x, v1.x
mov r2.xy, c[a0.x + 8]
mul r7.xyz, r3.xyz, r2.y
mad r7.xyz, r4.xyz, r2.x, r7.xyz
mul r7.xyz, r7.xyz, r1.z
mad r7.xyz, r7.xyz, c33.x, r6.xyz
mov r6.xyz, r7.xyzz
mov r6.w, r0.y
dp4 oPos.x, c26, r6
dp4 oPos.y, c27, r6
dp4 oPos.z, c28, r6
dp4 oPos.w, c29, r6
add r6.xyz, c13.xyz, -r7.xyz
dp3 r4.x, r4.xyz, r6.xyz
dp3 r4.y, r3.xyz, r6.xyz
dp3 r4.z, r5.xyz, r6.xyz
dp3 r1.z, r4.xyz, r4.xyz
rsq r1.w, r1.z
mul r3.xyz, r4.xyz, r1.w
mad oD0.xyz, r3.xyz, c34.x, c34.x
rcp r1.z, r1.x
add r2.z, c20.y, -r1.z
add r1.x, c20.y, -c20.x
rcp r1.x, r1.x
mul r1.x, r2.z, r1.x
min r1.x, r0.y, r1.x
max r1.x, c32.x, r1.x
mov r3.xy, r1.y
mov r3.zw, r0.x
lit r3.z, r3
slt r2.w, r0.y, r3.z
add r2.z, r0.y, -r2.w
mul r2.z, r2.z, r3.z
mad r2.w, r2.w, r0.y, r2.z
add r2.z, r0.y, -r1.y
mul r2.z, c23.x, r2.z
mul r2.z, r2.z, r2.w
mul r2.z, r2.z, c19.x
mul r2.z, r2.z, r1.x
rcp r1.x, c21.z
mul r1.x, r1.z, r1.x
min r1.x, r0.y, r1.x
max r1.x, c32.x, r1.x
add r1.x, r0.y, -r1.x
mul r3.xyz, r2.z, r1.x
mov oD0.w, r3.xyzx
rcp r1.z, r1.w
rcp r1.x, c15.x
mul r1.x, r1.z, r1.x
min r1.x, r0.y, r1.x
max r1.x, c32.x, r1.x
add r0.x, r0.y, -r1.x
mul oD1.xyz, c14.xyz, r0.x
add oT0.xy, r2.xy, c34.x
mul r0.x, v3.x, r1.y
mul r0.x, r0.x, c33.y
mul r1, c37.w, r0.x
expp r1.y, r1.x
slt r4, r1.y, c35
add r0.xyz, r4.yzw, -r4.xyz
mov r4.yzw, r0.xxyz
dp3 r1.z, r4.yzw, c35.yyw
dp4 r1.w, r4, c35.xxzz
add r0.xy, r1.y, -r1.zw
mul r1.xyw, r0.xy, r0.xy
mul r0.xyz, r1.xy, r1.xy
mov r3.xz, r1.xyyw
mov r3.yw, r0.xxzy
dp4 r2.z, r4, c37.yzzy
dp4 r2.w, r4, c37.yyzz
mad r0, c36.xyxy, r3.yyww, c36.zwzw
mad r1, r0, r3.yyww, c37.xyxy
mad r0.xyw, r1.xz, r3.xz, r1.yw
mov r1.xz, r0.xyyw
mul r2.zw, r2.zzzw, r1.xxxz
mul r0.x, r2.y, r2.w
mad r0.y, r2.x, r2.z, r0.x
mul r0.x, r2.y, r2.z
mad r0.z, -r2.x, r2.w, r0.x
add oT1.xy, r0.yz, c34.x
