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
	     se(w<6)
	     {
	     	w=3*z+2
	     	se(k>2)
	     	{
	     		z=2*w-z
	     		k=y*3-z
	     	}
	     	k=w-3*w
	     }
	     se(y>4 ou x<w)
	     {
	     	se(k<8)
	     	{
	     	  x=y-w*3
	     	  y=k+2*x		
	     	}
	     	z=2*k+y
	          y=w+2*y
	     }
	     x=x-y*3
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
 * @POSICAO-CURSOR = 920; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
