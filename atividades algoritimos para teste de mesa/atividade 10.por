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

	     se(w>1 e w<6)
	     {
	     	x=y-w*2
	     	se(y<6)
	     	{
	     		y=2*z+2
	     		se(y>4 ou x<w)
	     		{
	     			w=2*k+y
	     		}
	     		senao
	     		{
	     			k=w+2*y
	     		}
	     	}
	     	senao
	     	{
	     		se(z>4 e x<w)
	     		{
	     			k=2*k+y
	     		}
	     		senao
	     		{
	     			se(y==4 ou x<w)
	     			{
	     				y=2*k+y
	     				z=k+2*y
	     			}
	     			k=w+2*y
	     		}
	     		w=k-3*x
	     	}
	     }
	     senao
	     {
	     	z=y+2*x
	     	se(w>15 e x<7)
	     	{
	     		z=2*w-z
	     	}
	     	senao
	     	{
	     		w=y*3-z
	     		se(z>4 ou x<w)
	     		{
	     			w=2*k+y
	     			x=w+2*y
	     		}
	     		se(y>4 ou x<w)
	     		{
	     			z=2*k
	     			k=w+2
	     		}
	     escreva("=============================\n")
          escreva("\n valor da variavel x é: ",x)
          escreva("\n valor da variavel y é: ",y)
          escreva("\n valor da variavel z é: ",z)
          escreva("\n valor da variavel k é: ",k)
          escreva("\n valor da variavel w é: ",w)
	     	}
	     }
	     
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */