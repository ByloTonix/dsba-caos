.text
main:
    # x: t0 = readInt()
    addi a7, zero, 5
    ecall
    add t0, zero, a0

    # y: t1 = readInt()
    addi a7, zero, 5
    ecall
    add t1, zero, a0

    # Task 1
    li t2, 5         # t2 = 5
    add t2, t0, t2   # t2 = x (t0) + 5 (t2)
    li t3, 7         # t3 = 7
    sub t3, t1, t3   # t3 = y-7
    sub t4, t2, t3   # t4 = (x+5)-(y-7)
    # Printing
    mv a0, t4
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall
    
# Task 2
    li t2, 2         # t2 = 2
    mul t2, t2, t0   # t2 = 2x
    mul t2, t2, t0   # t2 = 2xx
    li t3, 3         # t3 = 3
    mul t3, t3, t1   # t3 = 3y
    sub t4, t2, t3   # t4 = 2xx-3y
    li t5, 4         # t5 = 4
    add t4, t4, t5   # t4 = 2xx-3y+4
    # Printing
    mv a0, t4
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 3
    li t2, 5         # t2 = 5
    add t2, t0, t2   # t2 = x+5
    div t3, t2, t1   # t3 = (x+5) / y
    li t4, 10        # t4 = 10
    li t5, 1         # t5 = 1
    sub t5, t1, t5   # t5 = y-1
    div t4, t4, t5   # t4 = 10/(y-1)
    add t4, t3, t4   # t4 = (x+5)/y + 10/(y-1)
    # Printing
    mv a0, t4
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 4
    div t2, t0, t1   # t2 = x/y
    mul t2, t2, t1   # t2 = (x/y)*y
    rem t3, t0, t1   # t3 = x%y
    add t4, t2, t3   # t4 = (x/y)*y + x%y
    # Printing
    mv a0, t4
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall
    
    # Task 5:
    sgt t4, t0, t1   # t4 = 1 if t0 > t1 and t4 = 0 if t0 <= t1
    mv a0, t4
    # Printing
    mv a0, t4
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall
