programa
{
	
	funcao inicio()
	{
	  const real GANHO_POR_HORA = 10.0
	  const real HORAS_PERMITIDAS = 50.0
	  real numero_de_horas_trabalhadas,codigo,salario_total,excesso_de_horas_trabalhadas 
	  escreva("informe o seu codigo ")
	  leia(codigo)
	  escreva("informe o numero de horas trabalhadas ")
	  leia(numero_de_horas_trabalhadas)
	  

	  se(numero_de_horas_trabalhadas<= HORAS_PERMITIDAS)
	  {
	  	salario_total = numero_de_horas_trabalhadas* GANHO_POR_HORA
	  	escreva("seu salario é: " + salario_total)
	  	
	  }
	  senao
	  {
	  	excesso_de_horas_trabalhadas = ( numero_de_horas_trabalhadas - HORAS_PERMITIDAS)*20
	  	salario_total = (HORAS_PERMITIDAS*GANHO_POR_HORA)+excesso_de_horas_trabalhadas 
	  	escreva(" seu salario é R$: " + salario_total)
	  	escreva("o excesso foi de: " + excesso_de_horas_trabalhadas )
	  	
	  }
	  
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 828; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */