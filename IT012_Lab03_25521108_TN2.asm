# Ho va ten: Luong Vu Ngoc Minh - MSSV: 25521108
# Muc dich: Thi nghiem 2 (Ma nguon 2) - Chuyen bieu thuc a = b + c sang hop ngu MIPS

.text
.globl main
main:
    addi $t1, $zero, 7       # b = 7
    addi $t2, $zero, 5       # c = 5
    add  $t0, $t1, $t2       # a = b + c
    li   $v0, 10             # ket thuc chuong trinh
    syscall