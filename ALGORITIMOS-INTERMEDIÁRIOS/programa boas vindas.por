programa
{
	
	funcao inicio()
	{
		cadeia nome,homens_comprimentados,mulheres_comprimentadas
		caracter sexo = 'f'
		inteiro quant_pessoas,controle=0
		
          escreva("Quantas pessoas serao dadas boas vindas? ")
		leia(quant_pessoas)
		controle= quant_pessoas
		para(controle=0;controle<=quant_pessoas;controle++)
		{
			escreva("\nInforme seu sexo: ")
			leia(sexo)
			escreva("\ninforme seu nome: ")
		     leia(nome)
		     escolha(sexo)
		     {
		     	caso 'f': escreva("Bem vinda Sra.",nome)
                    pare
                    caso contrario:
                    escreva("Bem vindo Sr.",nome)
		     }
		      controle++
		}
		
			
		    
	}	
	     
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */