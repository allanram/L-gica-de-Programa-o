programa
{
	
	funcao inicio()
	{
		real nota_1,nota_2,media,cont=1.0,numero_alunos=0.0,nota_total=0.0
		
		escreva("Informe a quantidade de alunos: ")
		leia(numero_alunos)

		para(cont=1.0; cont<=numero_alunos; cont++)
		{
	           escreva("Digite as notas do aluno",cont,":\n")
	           leia(nota_1)
		   leia(nota_2)
		   nota_total = nota_1+nota_2+nota_total
		}
		 media = (nota_total)/(numero_alunos*2)
		 escreva("A media da turma foi:",media)
		
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
