programa
{

		const cadeia alfabeto [26] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
	
	funcao inicio()
	{
		criptografar("",3)
	}

	funcao criptografar(cadeia texto, inteiro chave){

		cadeia letra = "Y"
		inteiro posicao

		para(inteiro i=0; i < 26; i++){

			se(letra == alfabeto[i]){
				escreva(" A letra ",letra," esta na posição ", i)

				posicao = i+chave

				posicao = posicao % 26
				
				escreva("\n A letra criptografada é ",alfabeto[posicao])
				pare
			}

		}
		
	}
}
