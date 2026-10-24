# Ho va ten: Luong Vu Ngoc Minh - MSSV: 25521108
# Muc dich: Thi nghiem 2 (Ma nguon 3) - Tinh dien nang tieu thu cua ho gia dinh trong 3 thang (kWh)

.text
.globl main
main:
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640
    
    # usage1 = reading1 - reading0
    sub  $t0, $s1, $s0
    
    # usage2 = reading2 - reading1
    sub  $t1, $s2, $s1
    
    # usage3 = reading3 - reading2
    sub  $t2, $s3, $s2

    # total = usage1 + usage2 + usage3 (hai lenh add)
    add  $t3, $t0, $t1
    add  $t3, $t3, $t2

    li   $v0, 10
    syscall