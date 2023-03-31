programa
{
	
	funcao inicio()
	{
         inteiro numero,soma=0
         caracter controle
         faca
         {
           escreva("Digite um número: ")
           leia(numero)
           escreva("Quer fornecer outro numero (s/n)? ")
           leia(controle)
           soma = soma+numero
         }enquanto(controle == 's')
          escreva("A soma dos valores é: ",soma)
       
         
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 6, 17, 6}-{soma, 6, 24, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */