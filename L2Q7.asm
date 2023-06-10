.data
	msg: .asciiz "\n"
.text
	li, $v0,5
	syscall
	move $s0, $v0
	addi $s1, $zero, 1
	loop1:
		add $s2, $zero, $zero
		addi $t0, $zero, 1
		loop2:
			addi $t1, $zero, 1
			loop3:
				addi $s2, $s2, 1
				addi $t1, $t1, 1
				ble $t1, $t0, loop3
			addi $t0, $t0, 1
			ble $t0, $s1, loop2
		li $v0, 1
		move $a0, $s2
		syscall
		
		li, $v0, 4
		la $a0, msg
		syscall
		
		addi $s1, $s1, 1
		ble $s1, $s0, loop1