# Ho va ten: Luong Vu Ngoc Minh - MSSV: 25521108
# Muc dich: Thi nghiem 3 (Ma nguon 5) - In mot thong bao va mot so nguyen bang syscall

.data
msg:   .asciiz "Dien nang (kWh): "
nl:    .asciiz "\n"
 
.text
.globl main
main:
    addi $t0, $zero, 150
    li   $v0, 4              # dich vu 4: in chuoi
    la   $a0, msg            # doi so: dia chi cua msg
    syscall
    li   $v0, 1              # dich vu 1: in so nguyen
    add  $a0, $t0, $zero     # doi so: so can in
    syscall
    li   $v0, 4              # in xuong dong
    la   $a0, nl
    syscall
    li   $v0, 10             # dich vu 10: ket thuc
    syscall