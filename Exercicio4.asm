.data
	text: .asciiz "Impossivel realizar a divisão"
.text
	addi $t1, $zero, 1
	addi $t2, $zero, 2
	addi $t3, $zero, 3
	addi $t4, $zero, 4
	loop:
		li $v0, 5
		syscall
		add $s0, $v0, $zero
		
		li $v0, 5
		syscall
		add $s1, $v0, $zero
		
		li $v0, 5
		syscall
		add $t0, $v0, $zero
		
		beq $t0, $t1, soma
		beq $t0, $t2, subtracao
		beq $t0, $t3, multipl
		beq $t0, $t4, divis
		j finaliza
	soma:
		add $s0, $s0, $s1
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		j loop
	subtracao:
		sub $s0, $s0, $s1
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		j loop
	multipl:
		mul $s0, $s0, $s1
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		j loop
	divis:
		beq $s1, $zero, mensagem
		div $s0, $s0, $s1
		li $v0, 1
		add $a0, $s0, $zero
		syscall
		j loop
	mensagem:
		li $v0, 4
		la $a0, text
		syscall
		j loop
	finaliza:
	
	