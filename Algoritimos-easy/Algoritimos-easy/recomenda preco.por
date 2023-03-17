programa
{
	
	funcao inicio()
	{
		escreva("Usuário me informe o nome do primeiro produto \n")
          cadeia nome_produto_1,nome_produto_2,nome_produto_3
          real primeiro_valor,segundo_valor,terceiro_valor 
          leia(nome_produto_1)
          escreva("Me diga agora o valor dele: \n")
          leia(primeiro_valor)
          escreva("--------------------\n")
          
          escreva("Usuário me informe o nome do segundo produto \n")
          leia(nome_produto_2)
          escreva("Me diga agora o valor dele: \n")
          leia(segundo_valor)
          escreva("\n--------------------\n")
          
          escreva("Usuário me informe o nome do terceiro produto \n")
          leia(nome_produto_3)
          escreva("Me diga agora o valor dele: \n")
          leia(terceiro_valor)
          escreva("=======================\n")
        
          se(primeiro_valor<segundo_valor)
          {
          	se(primeiro_valor<terceiro_valor)
          	{
          		escreva("Te recomendo comprar", nome_produto_1)
          	}
          }
          senao se(segundo_valor<terceiro_valor)
          {
          	escreva("Te recomendo comprar ", nome_produto_2)
          }
          senao
          {
          	escreva("Te recomendo comprar ", nome_produto_3)
          }
          

         

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome_produto_1, 7, 17, 14}-{nome_produto_2, 7, 32, 14}-{nome_produto_3, 7, 47, 14}-{primeiro_valor, 8, 15, 14}-{segundo_valor, 8, 30, 13}-{terceiro_valor, 8, 44, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */