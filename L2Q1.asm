.data
	print: .asciiz " \n"
.text
	li $v0, 5
	syscall
	add $s0, $v0, $zero
	mul $s1, $s0, $s0
	
	li $v0, 1
	add $a0, $s1, $zero
	syscall
	
	li $v0, 4
	la $a0, print
	syscall
	
	li $v0, 10
	syscall