.data

	VAR_X:	.word 	4	#guardado na ram


.text

main:	
	la 	$t0, VAR_X	#carrega o endereço RAM da variavel para o registo
	lw	$s0, 0($t0)	#carrega conteudo do emdereço RAM para o registo 
				# 0() -> deslocamento, obrigatório! Quando nao há deslocamento, o valor é ZERO! 0 obrigatorio colocar

	addi	$s0, $s0, 1	
	sw	$s0, 0($t0)	#envia o conteudo do registo s0, para o endereço guardado no t0

	li	$v0, 10		#necessario ao acabar programa
	syscall