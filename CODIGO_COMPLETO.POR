programa
{
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> t

		const cadeia alfabeto [26] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
	
	funcao inicio()
	{
		criptografar("",3)
		escreva("\n")
		descriptografar("",3)
		
	}

	funcao criptografar(cadeia texto, inteiro chave){

		
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frases
		logico esta_no_alfabeto

		numero_letras_frases = t.numero_caracteres(texto)
		

		para(inteiro h=0; h < numero_letras_frases; h++){

			esta_no_alfabeto = falso

			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)
			
			para(inteiro i=0; i < 26; i++){

				se(letra == alfabeto[i]){
				//escreva(" A letra ",letra," esta na posição ", i)
				posicao = i+chave
				posicao = posicao % 26
				escreva(alfabeto[posicao])
				esta_no_alfabeto = verdadeiro
				pare
			}

		}
			se(esta_no_alfabeto == falso){
				
				escreva(letra)
					
			}
		


		}
		
	}



		funcao descriptografar(cadeia texto, inteiro chave){

		
		cadeia letra = " "
		caracter letra_caracter = ' '
		inteiro posicao
		inteiro numero_letras_frases
		logico esta_no_alfabeto

		numero_letras_frases = t.numero_caracteres(texto)
		

		para(inteiro h=0; h < numero_letras_frases; h++){

			esta_no_alfabeto = falso

			letra_caracter = t.obter_caracter(texto, h)

			letra = ti.caracter_para_cadeia(letra_caracter)
			
			para(inteiro i=0; i < 26; i++){

				se(letra == alfabeto[i]){

				posicao = i-chave

				se(posicao < 0){
					
					posicao = posicao + 26
				}
				
				escreva(alfabeto[posicao])
				esta_no_alfabeto = verdadeiro
				pare
			}

		}
			se(esta_no_alfabeto == falso){
				
				escreva(letra)
					
			}
		


		}
		
	}



	
}
