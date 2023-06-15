.data
	text: .asciiz "\nn! = "
.text
	addi $t0, $zero, 2
	addi $v0, $zero, 5
	syscall
	add $a0, $v0, $zero #adiciona o valor para a0 que é o argumento da função
	jal fatorial
	add $s0, $v0, $zero #adiciona o valor do fatorial de n para o registrador s0
	j exit
	
	fatorial:
		addi $sp, $sp -8
		sw $a0, 0($sp)
		sw $ra, 4($sp)
		slt $t1, $a0, $t0 # a0 < 2 ?
		beq $t1, $zero, else
		addi $v0, $zero, 1
		addi $sp, $sp, 8
		jr $ra
	else:
		subi $a0, $a0, 1
		jal fatorial
		lw $a0, 0 ($sp)
		lw $ra, 4 ($sp)
		addi $sp, $sp, 8
		mul $v0, $a0, $v0
		jr $ra
	exit:
		li $v0, 4
		la $a0 text
		syscall
		
		li $v0, 1
		add $a0, $s0, $zero
		syscall
	