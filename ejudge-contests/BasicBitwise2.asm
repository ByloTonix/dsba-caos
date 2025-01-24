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
    
    
    mv t5, t0	# store x at t5 to fix task3
    mv t6, t1	# store y at t6 to fix task4
    
    # Task 1
    li t2, -1
    slli t2, t2, 2
    and t3, t0, t2	# t3 = x & (-1 << 2)
    # Printing
    mv a0, t3
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 2
    li t2, -1
    srli t2, t2, 30
    or t3, t0, t2	# t3 = x | (-1 >> 30)
    # Printing
    mv a0, t3
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 3
    mv t0, t5
    li t2, 1
    sll t2, t2, t1	# left shift to do +1 numeration
    or t3, t0, t2	# t3 = x | (1 << y)
    # Printing
    mv a0, t3
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 4
    li t2, 1
    sll t2, t2, t6
    not t2, t2	# t2 = ~(1 << y)
    and t3, t5, t2	# t3 = x & ~(1 << y)
    # Printing
    mv a0, t3
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 5
    addi t2, t6, 3
    slt t3, t5, t2
    slt t4, t2, t5
    or t5, t3, t4
    # Printing
    mv a0, t5
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall

    # Task 6
    li t2, -5
    slt t3, t2, t5
    li t4, 5
    slt t5, t1, t4
    and t6, t3, t5
    # Printing
    mv a0, t6
    li a7, 1
    ecall
    li a7, 11
    li a0, '\n'
    ecall
