vs.1.1
dcl_psize v0

def c18, 0, 1, 0, 0
def c17, 1, 0.5, 0, 3
def c20, 0.25, 0.5, 0.75, 1
def c21, -24.9808, 60.1458, -85.4538, 64.9394
def c22, -19.7392, 1, -1, 0.159155
def c19, 2, 0, 0, 0
mov r1, c17
mov r0.x, c12
slt r2.xyz, c15.xyz, r0.x
add r0.yzw, r1.x, -r2.xxyz
mul r0.yzw, r0.yyzw, r0.x
mad r2.xyz, r2.xyz, c15.xyz, r0.yzw
mul r0.yzw, r1.y, c14.xxyz
mad r0.yzw, r0.yyzw, r2.xxyz, c13.xxyz
mul r2, r0.yzw, r2.xyz
slt r0.w, c15.y, r0.x
add r0.y, r0.x, -c15.y
mul r0.z, c16.x, r0.y
add r0.y, r1.x, -r0.w
mul r0.y, r0.y, r1.z
mad r0.y, r0.w, r0.z, r0.y
add r2.y, r2.y, r0.y
mov r2.w, r1.x
dp4 r4.x, c0, r2
dp4 r4.y, c1, r2
dp4 r4.z, c2, r2
dp4 r4.w, c3, r2
dp3 r0.y, r4.xyz, r4.xyz
rsq r0.y, r0.y
mul r3.xyz, r0.y, r4.xyz
mul r0.yzw, c18.xxxy, r3.yyzx
mad r2.xyz, c18.yxx, r3.zxy, -r0.yzw
mul r0.yzw, r3.zzxy, r2.yyzx
mad r0.yzw, r3.yyzx, r2.zzxy, -r0.yyzw
mov a0.x, v0.x
mul r0.yzw, r0.yyzw, c[a0.x + 8].y
mad r0.yzw, r2.xxyz, c[a0.x + 8].x, r0.yyzw
mad r4.xyz, r0.yzw, r1.w, r4.xyz
dp4 oPos.x, c4, r4
dp4 oPos.y, c5, r4
dp4 oPos.z, c6, r4
dp4 oPos.w, c7, r4
mul r0.y, r0.x, c19.x
mul r2, c22.w, r0.y
expp r2.y, r2.x
slt r3, r2.y, c20
add r0.yzw, r3.yyzw, -r3.xxyz
mov r3.yzw, r0.yyzw
dp3 r2.z, r3.yzw, c20.yyw
dp4 r2.w, r3, c20.xxzz
add r0.yz, r2.y, -r2.zzw
mul r2.xyw, r0.yz, r0.yz
mul r0.yzw, r2.xxy, r2.xxy
mov r5.xz, r2.xyyw
mov r5.yw, r0.yywz
dp4 r4.x, r3, c22.yzzy
dp4 r4.y, r3, c22.yyzz
mad r2, c21.xyxy, r5.yyww, c21.zwzw
mad r3, r2, r5.yyww, c22.xyxy
mad r2.xyw, r3.xz, r5.xz, r3.yw
mov r3.xz, r2.xyyw
mul r4.xy, r4.xy, r3.xz
mul r0.y, c[a0.x + 8].y, r4.y
mad r0.z, c[a0.x + 8].x, r4.x, r0.y
mul r0.y, c[a0.x + 8].y, r4.x
mad r0.w, -c[a0.x + 8].x, r4.y, r0.y
add oT0.xy, r0.zw, r1.y
mul r0.y, r0.x, r0.x
mul r0.x, r0.y, r0.y
mad r0.x, -r0.x, r0.y, r1.x
mov oD0.w, r0.x
