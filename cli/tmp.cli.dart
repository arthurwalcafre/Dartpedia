/*
=============================================================================
Informacoes:

O aplicativo cli faz parte do projeto Dartpedia.

O cli eh o nosso aplicativo que esta sendo desenvolvido usando Dart

cli.dart - Fica localizado na pasta Dartpedia, em /dartpedia/cli/bin.

Outras informacoes importantes sobre o cli; nosso aplicaivo 

site		:

Autor		: Arthur Walcafre Oliveira <arthurwalcafredeoliveira@gmail.com>

Manutencao	:

-------------------------------------------------------------------------------

Funcionamento:

Inicilmente o cli, ao ser execuado, mostra uma saudacao na tela, por exemplo:

Dentro da Dartpedia em home/arthur.walcafre/dartpedia/cli rode o comando dart
 run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Importante ! Este aplicativo esta em desenvolvimento e ao longo do tempo o
 comportamento do aplicativo pode mudar.


-------------------------------------------------------------------------------

dicionario do Versionamento:

v = versao

0 = Inicio do versionamento

. = Implementacao do versionamento

1 Proxima versao, 2, proxima versao, e assim por diante.

-------------------------------------------------------------------------------

Versao: 0.0.0

Data: 27/03/2026

Descricao do codigo: Codigo original...

Codigo:

import 'package:cli/cli.dart' as.cli

void main(List<String> arguments ) [
		print ('Hello World: $[cli.calculate()]!);
]

Saida padrao ao executar o codigo:

Comando: dart run bin/clin.dart || dart.bin/cli.dart

Saida: Hello World: 42!

-------------------------------------------------------------------------------
*

Versao: 0.0.1

Data: 10/04/2026

Descricao do codigo: Simplifique a saida por enquanto. Apague a primeira linha (voce nao precisa dessa declaracao de importacao) e altere a print declaracao para exibir uma saudacao simples:

Codigo:


void main(List<String> arguments) {
	print ('Hello, Dart!');
}

Saida padrao ao executar o codigo:

Comando: dart run || dart bin/cli.ddart

Saida: Hello, Dart!

-------------------------------------------------------------------------------

Versao: 0.0.2

Data: 10/04/2026

Descricao: Implemente o versioncomando em cli/bin/cli.dart: Adicione logica para
 lidar com um versioncomando que imprime a versao atual da CLI. Use um if instrucao `if` para verificar se o primeiro argumento fornecido eh `true` version. Voce tambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O
 valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.1'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

void main(List<String> arguments) {
	if (arguments.isEmpty) {
    	print ('Hello, Dart!');
   else if (arguments.first == 'version') {
	print ('Dartpedia CLI version $version');
	}
}


Essa $version sintaxe eh chamada de interpolacao de strings. Ela permite
 incorporar o valor da variavel diretamente em uma string, prefixando o nome da
 variavel com um $sinal.

Codigo:

cont version = '0.0.2';

void main (List<String> arguments) {
	if (arguments.isEmpty){	
		print ('Hello, Dart!');
	} else if "arguments.first== 'version') {
		print ('Dartpedia CLI version $version');
	}
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------
*/

// Codigo valido ate aqui

// Codigo: 

const version: '0.0.2';

void main (List<String> arguments) {
	if (arguments.isEmpty) {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} printUsage();
	}	
}

void printUsage()  {
	print(
	"The following commands are valid: 'help', 'version', 'search <ARTICELE-TITLE>'"
	);
}

Saida padrao ao executar o codigo:

Comando: dart

Saida: Hello, Dart!:

Comando: dart run bin/cli.dart version

Saida: Dartpedia CLi version 0.0.3
	
