.data
	print: .asciiz " \n"
.text
	addi $s0, $zero, 24
	addi $t0, $zero, 42
	loop:
		slt $t1, $s0, $t0
		beq $t1, $zero, exit
		
		li $v0, 4
		la $a0, print
		syscall
		
		li $v0, 1
		add $a0, $zero, $s0
		syscall
		
		addi $s0, $s0, 3
		j loop
	exit:
	