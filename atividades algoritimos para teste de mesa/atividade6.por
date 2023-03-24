programa
{
	
	funcao inicio()
	{
          inteiro x,y,z,k,w
          escreva("digite um valor para x: ")
	  leia(x)
	  escreva("digite um valor para y: ")
	  leia(y)
	  escreva("digite um valor para z: ")
	  leia(z)
	  escreva("digite um valor para k: ")
	  leia(k)
	  escreva("digite um valor para w: ")
	  leia(w)

	     se(x>5)
	     {
	     	x=x*3-9
	     	k=2*k-w
	     }
	     se(z<7)
	     {
	     	y=3+z*2
	     }
	     senao
	     {
	     	z=w+3*y
	     	w=x+2*y
	     }
	     se(z>3)
	     {
	     	x=3*y+x
	     }
	     se(k==2)
	     {
	     	z=w-k*3
	     }
	     senao
	     {
	     	k=z-k+2*y
	     }
	  escreva("=============================\n")
          escreva("\n valor da variavel x é: ",x)
          escreva("\n valor da variavel y é: ",y)
          escreva("\n valor da variavel z é: ",z)
          escreva("\n valor da variavel k é: ",k)
          escreva("\n valor da variavel w é: ",w)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 643; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
