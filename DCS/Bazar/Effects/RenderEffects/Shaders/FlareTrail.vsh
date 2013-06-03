vs.1.1
dcl_position v0

// v0.x = phase
// v0.y = noiseval
// v0.z = corner index
// v0.w = angle

def c25, 0, 1, 0, 0
def c26, 0.5, 0.5, 0, 0
def c27, 0.25, 0.5, 0.75, 1
def c28, -24.9808, 60.1458, -85.4538, 64.9394
def c29, -19.7392, 1, -1, 0.159155
def c24, 1.0, 75,  8, 10
def c30, 1, 0.6, 0.3, 0
def c31, 16, 0, 0, 0
add r0.x, v0.w, c18.x
mul r1, c29.w, r0.x
expp r1.y, r1.x
slt r2, r1.y, c27
add r0.xyz, r2.yzw, -r2.xyz
mov r2.yzw, r0.xxyz
dp3 r1.z, r2.yzw, c27.yyw
dp4 r1.w, r2, c27.xxzz
add r0.xy, r1.y, -r1.zw
mul r1.xyw, r0.xy, r0.xy
mul r0.xyz, r1.xy, r1.xy
mov r3.xz, r1.xyyw
mov r3.yw, r0.xxzy
dp4 r1.x, r2, c29.yzzy
dp4 r1.y, r2, c29.yyzz
mad r0, c28.xyxy, r3.yyww, c28.zwzw
mad r2, r0, r3.yyww, c29.xyxy
mad r0.xyw, r2.xz, r3.xz, r2.yw
mov r2.xz, r0.xyyw
mul r1.xy, r1.xy, r2.xz
mov r0.xyz, c14
mad r2.xyz, r0.xyz, v0.x, c13.xyz
dp3 r0.w, r2.xyz, r2.xyz
rsq r0.w, r0.w
mul r4.xyz, r0.w, r2.xyz
mul r2.xyz, r4.zxy, c25.yxx
mad r3.xyz, r4.yzx, c25.xxy, -r2.xyz
mul r2.xyz, r3.zxy, r4.yzx
mad r2.xyz, r3.yzx, r4.zxy, -r2.xyz
mul r2.xyz, r1.y, r2.xyz
mad r1.xyz, r1.x, r3.xyz, r2.xyz
mul r1.xyz, r1.xyz, v0.y
mul r1.xyz, r1.xyz, c24.y
slt r3.xyz, c22.xyz, v0.x
add r2.xyz, c25.y, -r3.xyz
mul r2.xyz, r2.xyz, v0.x
mad r2.xyz, r3.xyz, c22.xyz, r2.xyz
mov r2.w, c26.x
mul r0.xyz, r2.w, r0.xyz
mad r0.xyz, r0.xyz, r2.xyz, c13.xyz
mul r0.xyz, r0.xyz, r2.xyz
slt r2.x, c22.y, v0.x
add r0.w, v0.x, -c22.y
mul r1.w, c23.x, r0.w
add r0.w, c25.y, -r2.x
mul r0.w, r0.w, c25.x
mad r0.w, r2.x, r1.w, r0.w
add r3.xzw, r0.y, r0.w
mov r0.y, r3.xxzw
add r1.w, c12.x, -v0.x
rsq r0.w, r1.w
rcp r0.w, r0.w
mad r0.xyz, r1.xyz, r0.w, r0.xyz
mov r0.w, c25.yxxy
dp4 r3.x, c0, r0
dp4 r3.y, c1, r0
dp4 r3.z, c2, r0
dp4 r3.w, c3, r0
dp3 r0.x, r3.xyz, r3.xyz
rsq r0.w, r0.x
mul r2.xyz, r0.w, r3.xyz
mul r0.xyz, c25.xxy, r2.yzx
mad r1.xyz, c25.yxx, r2.zxy, -r0.xyz
mul r0.xyz, r2.zxy, r1.yzx
mad r0.xyz, r2.yzx, r1.zxy, -r0.xyz
mov a0.x, v0.z
mul r4.xyz, r0.xyz, c[a0.x + 8].y
mad r4.yzw, r1.xxyz, c[a0.x + 8].x, r4.xxyz
mul r4.x, c24.z, r1.w
mad r4.x, r4.x, r1.w, c24.x
mad r3.xyz, r4.yzw, r4.x, r3.xyz
dp4 oPos.x, c4, r3
dp4 oPos.y, c5, r3
dp4 oPos.z, c6, r3
dp4 oPos.w, c7, r3
add r3.yzw, c15.xxyz, -r3.xxyz
dp3 r3.x, r3.yzw, r3.yzw
rsq r3.x, r3.x
mul r3.xyz, r3.x, r3.yzw
dp3 r1.x, r1.xyz, r3.xyz
dp3 r1.y, r0.xyz, r3.xyz
dp3 r1.z, r2.xyz, r3.xyz
mad oD0.xyz, r1.xyz, r2.w, r2.w
rcp r0.x, r0.w
add r0.y, c19.y, -r0.x
add r0.x, c19.y, -c19.x
rcp r0.x, r0.x
mul r0.x, r0.y, r0.x
min r0.x, c25.y, r0.x
max r1.x, c25.x, r0.x
slt r0.z, r1.w, c25.x
add r0.y, c25.y, -r0.z
add r0.w, c25.y, -r1.w
mul r0.x, c17.x, r0.w
mul r0.x, r0.y, r0.x
mad r0.x, r0.z, c25.x, r0.x
mul r0.xyz, r0.x, r1.x
mov oD0.w, r0.xyzx
min r0.x, c25.y, r0.w
max r0.xyz, c25.x, r0.x
mov r0.xy, r0.xxyz
mov r0.zw, c24.w
lit r1.z, r0
mov r0.xyz, c30
mad oD1.xyz, r0.xyz, r1.z, c16.xyz
add oT0.xy, c[a0.x + 8].xy, r2.w
mad oT1.xy, c[a0.x + 8].xy, r2.w, r2.w
mul oT1.z, r1.w, c31.x
