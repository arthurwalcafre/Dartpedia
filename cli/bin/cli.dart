/*=============================================================================
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

Versao: 0.0.1

Data: 10/04/2026

Descricao do codigo: Simplifique a saida por enquanto. Apague a primeira linha 
(voce nao precisa dessa declaracao de importacao) e altere a print declaracao
 para exibir uma saudacao simples:

Codigo:

void main(List<String> arguments) {
	print ('Hello, Dart!');
}

Saida padrao ao executar o codigo:

Comando: dart run || dart bin/cli.dart

Saida: Hello, Dart!

-------------------------------------------------------------------------------

Versao: 0.0.2

Data: 10/04/2026

Descricao: Implemente o versioncomando em cli/bin/cli.dart: Adicione logica 
para lidar com um versioncomando que imprime a versao atual da CLI. Use um if
 instruÃ§Ã£o `if` para verificar se 
primeiro argumento fornecido eh `true` version. Voce tambem precisara de uma
 version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao.
 O valor de uma const variavel nunca pode ser alterado depois de ter sido
 definido:

const version = '0.0.2'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

void main(List<String> arguments) {
	if (arguments.isEmpty) {
    	print ('Hello, Dart!');
   else if (arguments.first == 'version') {
	print ('Dartpedia CLI version $version');
	}
}


Essa $version sintaxe eh chamada de interpolacao de strings. Ela permite
 incorporar o valor da variavel diretamente em uma string, prefixando o nome 
da variavel com um $sinal.

Codigo:

const version = '0.0.2';

void main (List<String> arguments) {
	if (arguments.isEmpty) {	
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
 		print ('Dartpedia CLI version $version');
	}
}

Saida padrao ao executar o codigo:

Cotmando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------

Versao: 0.0.3

Data: 10/04/2026
a
Descricao do codigo: Adicione uma printUsage funcao: Para tornar a saida mais
 amigavel ao usuario, crie uma funcao separada para exibir as informacoes
 de uso. dColoque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(.
    "The following commands are valid: 'help', 'version', 'search 
<ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

Codigo:
const version = '0.0.3';
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

void printUsage() { // Add this net function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart || dart.run

Saida: Hello, Dart!

Comando: dart bin/cli.dart version

Saida: Dartpedia Cli version 0.0.3

-------------------------------------------------------------------------------

Versao: 0.0.4

Data: 10/04/2026

Descricao do codigo: Implemente o help comando e refine main: Agora, integre o 
help comando usando uma else if instrucao e limpe o comportamento padrao para
 chamar a printUsage funcao.

Modifique sua main funcao para que fique assim:

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

Codigo:

const version: '0.0.4';

void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print (' Hello, Dart!');
} else if (arguments.first == 'version') {
	    print('Dartpedia CLI version $version');
  } 
void printUsage()  {
	print(
		"The following commands are valid: 'help', 'version', 'search
 <ARTICLE-TITLE>´"
	);
}

Saida padrao ao executar o codigo:

Comando dart bin/cli.dart help || dart run

Saida; Hello Dart

Comando: dart bin\cli.dart version

const version = '0.0.4';

void main (List<String> arguments) {
 if (arguments.isEmpty || arguments.first == 'help') {
  printUsage();
  } else if (arguments.first == 'version') {
    print ('Dartpedia CLi version $version');
  } else {
     printUsage(); // Catch-all for any unrecognized command.
  }
}

void printUsage() {
		print(
	"The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart run || dart bin/cli.dart help

Saida: Hello, Dart!

Comando: dart bin/cli.dart help

Saida: Dartpedia CCLI version; 0.0.4
-------------------------------------------------------------------------------

Versao: 0.0.5

Data: 17/04/2026

Descricao do codigo: Tarefa 2: Implementar o comando de busca

Em seguida, implemente um comando basico search que receba o titulo de um 
artigo como entrada. Ao desenvolver essa funcionalidade, voce trabalhara com
 List manipulacao de dados, verificacao de valores nulos e interpolacao de
 strings.

1. Integre o search comando em main: Primeiro, modifique a mainfuncao 
cli/bin/cli.dart para incluir um else iframo que lide com o search comando. Por
 enquanto, basta imprimir uma mensagem de espaco reservado.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}.

//Codigo:

const version = '0.0.5';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    print('Search command recognized!');
  } else {
  }
}
void printUsage()  {
   print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart version || dart bin/cli.dart search

Saida: Dartpedia CLI version: '0.0.5'

Comando: dart bin/cli.dart search

Saida: Search command recognized!

-------------------------------------------------------------------------------

Versao: 0.0.6

Data: 24/04/2026

Descricao do codigo:O Dart impoe uma seguranca robusta contra valores nulos , o que significa que voce precisa declarar explicitamente quando uma variavel pode ser nula. Qualquer variavel que nao seja marcada como anulavel tem a garantia de nunca ser nula, mesmo em producao.

O objetivo da seguranca contra valores nulos nao eh impedir que voce use `null` em seu codigo, pois representar a ausencia de um valor pode ser util. Em vez disso, ela visa forcar voce a considerar a possibilidade de valores nulos e, portanto, a ser mais cuidadoso com ela. Juntamente com o analisador, isso ajuda a prevenir uma das falhas de tempo de execucao mais comuns em programacao: erros de ponteiro nulo.

//Codigo valido ate aqui

//Codigo:
const version = '0.0.6';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
   print('Search command recognized!');
  } else {
    printUsage();
  }
}
void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart version || dart bin;/cli.dart search

Saida: Dartpedia CLI version 0.0.6

Comando: dart bin/cli.dart search

Saida: The following  commands are valid: help, version, search <ARTICLE-TITLE>


-------------------------------------------------------------------------------

Versao: 0.0.7

Data: 24/04/2026

Descricao do codigo: Chame a searchWikipedia funcao a partir da mainfuncao: Agora, modifique o search bloco de comando main para chamar searchWikipedia e passar quaisquer argumentos que venham apos o search proprio comando. Use arguments.sublist(1) para obter todos os argumentos a partir do segundo. Se nenhum argumento for fornecido apos search, passe null para searchWikipedia.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Principais trechos do codigo anterior:

final As variaveis so podem ser definidas uma vez e sao usadas quando voce nao pretende altera-las novamente no codigo.
arguments.sublist(1) cria uma nova lista contendo todos os elementos da arguments lista apos o primeiro elemento (que era search).
arguments.length > 1 ? ... : null;eh um operador condicional (ternario). Ele garante que, se nenhum argumento for fornecido apos o search comando, inputArgsse torne null, correspondendo ao comportamento do codigo de exemplo para searchWikipedia o arguments parametro de List<String>?. 

//Codigo:
const version = '0.0.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }

}
void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
l}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
 }

Saida ao executar o codigo ate aqui:

Comando: dart bin/cli.dart version || dart bin/cli.dart search

Saida: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search

Saida: null

-------------------------------------------------------------------------------
Versao: 0.0.8

Data: 24/04/2026

Descricao:  Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart arquivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

Agora, atualize sua searchWikipedia funÃ§ao.

//Codigo:
import 'dart:io';

const version = '0.0.8';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}
void printUsage() {
        print( "the following commands are valid:  'help', 'version', 'search <ARTICLE-TITLE>'");
}

Saida ao executar o comando:


-------------------------------------------------------------------------------

Versao: 0.0.9

Data: 26/04/2026

Descricao do codigo: 

//Codigo:

import 'dart:io';

const version = '0.0.9';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;
  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

}

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

-------------------------------------------------------------------------------

Versao: 0.0.10

Data: 30/04/2026

Descricao do codigo: Now that you've added the http package, you need to import it into your Dart file to use its functionalities.

Open the dartpedia/bin/cli.dart file.

Add the following import statement at the top of the file, along with the existing dart:io import:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
This line imports the http package and gives it the alias http. After you do this, you can refer to classes and functions within the http package using http. (for example, http.Client, http.get). The as http part is a standard convention to avoid naming conflicts if another imported library also has a similarly named class or function.

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.10';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Arguedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string  
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

-------------------------------------------------------------------------------

Versao: 0.0.11

Data: 30/04/2026

Descricao do codigo: Task 3: Implement the getWikipediaArticle function
#
Now create a new function called getWikipediaArticle that handles fetching data from an external API. This function will be async because network requests are asynchronous operations.

Define the function signature: Below your main function (and printUsage function), add the following function signature.

// ... (your existing printUsage() function)

Future<String> getWikipediaArticle(String articleTitle) async {
  //You'll add more code here soon
}
Highlights from the preceding code:

The Future<String> return type indicates that this function will eventually produce a String result, but not immediately, because it's an asynchronous operation.
The async keyword marks the function as asynchronous, allowing you to use await inside it.

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Artpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  } 

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
// ... (your existing printUsage() function)

Future<String> getWikipediaArticle(String articleTitle) async {
    return '';
  //You'll add more code here soon
}

-------------------------------------------------------------------------------

Versao: 0.0.12

Data: 30/04/20206

Descricao do codigo: Construct the API URL: Inside your new getWikipediaArticle function, create a Uri object. The Uri represents the endpoint of the Wikipedia API that you'll be calling to get an article summary.

Add these lines inside the getWikipediaArticle function:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
  // ...
}

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.12';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {

// Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
    return '';
  final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
  // ...
}

-------------------------------------------------------------------------------

Versao 0.0.13

Data: 30/04/2026

descricao do codigo: Make the HTTP request and handle the response: Now, use the top-level get function from package:http to make an HTTP GET request to the URL you just constructed. The await keyword pauses the execution of getWikipediaArticle until the get call completes and returns an http.Response object.

After the request completes, check the response.statusCode to ensure the request was successful (a status code of 200 means OK). If successful, return the response.body, which contains the fetched data (in this case, raw JSON). If the request fails, return an informative error message.

Add these lines after the Uri construction within getWikipediaArticle:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.13';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {

// Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

-------------------------------------------------------------------------------

Versao: 0.0.14

Data:30/04/2026

Descricao do codigo: Update searchWikipedia to use async: Locate your searchWikipedia function and update its signature to be async as it will now perform asynchronous operations.

Your searchWikipedia function should now look like this (initial part):

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)
Highlights from the preceding code:

void searchWikipedia(List<String>? arguments) async: The function is now async. This is essential because it will call getWikipediaArticle, which is an async function itself and will need to await its result.

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.14';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment

} else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

-------------------------------------------------------------------------------

Versão: 0.0.15

Data 01/05/2026

Descricao do codigo: Add null and empty string checks for user input: Inside searchWikipedia, refine the if block that handles the case where no arguments are provided. If stdin.readLineSync() returns null (for example, if the user presses Ctrl+D/Ctrl+Z) or an empty string, print a message and exit the function.

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

-------------------------------------------------------------------------------

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.15';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }

articleTitle = inputFromStdin;
    } else {
      articleTitle = arguments.join(' ');
    }

    print('Looking up articles about "$articleTitle". Please wait.');
    print('Here ya go!');
    print('(Pretend this is an article about "$articleTitle")');
  }

  void printUsage() { // Add this new function
    print(
      "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
    );
  }

  Future<String> getWikipediaArticle(String articleTitle) async {
    final url = Uri.https(
      'en.wikipedia.org',
      '/api/rest_v1/page/summary/$articleTitle',
    );
    final response = await http.get(url); // Make the HTTP request

    if (response.statusCode == 200) {
      return response.body; // Return the response body if successful
    }

    // Return an error message if the request failed
    return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
  }

-------------------------------------------------------------------------------

Versao: 0.0.16

Data: 01/05/2026

descricao do codigo: Call getWikipediaArticle and print the result: Now, modify the searchWikipedia function to call your new getWikipediaArticle function and print the result. Then, replace the previous placeholder print statements with the actual API call.

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}
Highlights from the preceding code:

await getWikipediaArticle(articleTitle): Because getWikipediaArticle is an async function, you need to await its result. This pauses the searchWikipedia function until the Future<String> returned by getWikipediaArticle resolves into a String containing the article's contents.
print(articleContent): Prints the fetched article summary as a raw JSON string to the console.

-------------------------------------------------------------------------------

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http; // Add this line

const version = '0.0.16';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
  } 
articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }
 
  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

Saida padrao aoexecutar o codigo:

-------------------------------------------------------------------------------

Versao: 0.0.17

Data: 01/05/2026

Descricao do codigo: Next, try running without arguments. For example, when prompted, enter "Flutter_(software)".

dart run bin/cli.dart wikipedia
Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}
You have now successfully implemented the basic wikipedia command that fetches real data from an external API!

-------------------------------------------------------------------------------

//Codigo:

import 'dart:io';

import 'package:http/http.dart' as http;

const version = '0.0.17';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
   final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if succesfull
   }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

Saida padrao ao executar o codigo:

Comando: dart run || dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>

Comando: dart bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}

Comando: dart run bin/cli.dart wikipedia

Saida: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------

Versao: 0.0.18

Data: 12/05/2026

Descricao do codigo: Importar e usar o command_runnerpacote
#
Agora que você adicionou command_runnera classe como dependência, pode importá-la para sua cliaplicação e substituir a lógica de tratamento de argumentos existente pela nova CommandRunnerclasse. Esta etapa também corrige o comportamento de encerramento do programa discutido no final do Capítulo 3.

Abra o cli/bin/cli.dartarquivo.

Adicione a seguinte declaração de importação no início do arquivo, junto com suas outras importações:

import 'package:command_runner/command_runner.dart';
Esta declaração importa o command_runnerpacote, tornando a CommandRunnerclasse disponível para uso.

Refatore a mainfunção e remova a lógica antiga: Atualmente, sua mainfunção do Capítulo 3 lida diretamente com comandos como version`command`, help`command` e wikipedia`command`, e então chama `command` searchWikipedia. Agora você substituirá toda essa lógica personalizada de tratamento de comandos por uma única chamada à nova CommandRunnerclasse.

Seu cli/bin/cli.dartarquivo (do Capítulo 3) deve estar assim:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.18';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {  ... existing logic ...  }
void printUsage() {  ... existing logic ...  }
Future<String> getWikipediaArticle(String articleTitle) async {  ... existing logic ...  }
Agora, substitua todo o conteúdo cli/bin/cli.dart (exceto a httpimportação) pela seguinte versão atualizada:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}
Principais trechos do código anterior:

void main(List<String> arguments) asyncAborda diretamente a questão do programa não encerrar corretamente, mencionada no Capítulo 3. Observe que mainagora é declarado como async. Isso é essencial porque runner.run()retorna um Future, e maindeve awaitaguardar sua conclusão para garantir que o programa espere que todas as tarefas assíncronas terminem antes de encerrar.
var runner = CommandRunner();Cria uma instância da CommandRunnerclasse do seu novo command_runner pacote.
await runner.run(arguments);Chama o runmétodo na CommandRunnerinstância, passando os argumentos da linha de comando.
Funções removidas:

As funções printUsage` and` searchWikipedia, `or` e `or` getWikipediaArticleforam completamente removidas do pacote ` command-line` cli/bin/cli.dart. Sua lógica será reformulada e integrada ao command_runnerpacote `command-line` em capítulos futuros, como parte da construção da estrutura completa do `command-line`.

-------------------------------------------------------------------------------
Versao: 0.0.19

<<<<<<< Updated upstream
<<<<<<< HEAD
Data: 11/06/2026

Descricao do codigo: Atualize o arquivo cli.dart para usar o novo CommandRunner.
=======
=======
>>>>>>> Stashed changes
Versao: 0.0.19

Data: 11/06/2026

<<<<<<< Updated upstream
Descricao od codigo: Atualize o arquivo cli.dart para usar o novo CommandRunner.
>>>>>>> 1ad52fe (Licao 5: Tarefa 4: Atualize o arquivo cli.dart para usar o novo CommandRunner.)
=======
Descricao do codigo: Tarefa 4: Atualize o arquivo cli.dart para usar o novo CommandRunner.
>>>>>>> Stashed changes
#
Modifique cli/bin/cli.dartpara usar o novo CommandRunnere HelpCommand.

Abra o cli/bin/cli.dartarquivo.

Substitua o código existente pelo seguinte:

cli/bin/cli.dart
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner()..addCommand(HelpCommand());
  commandRunner.run(arguments);
}
Este código cria uma CommandRunnerinstância, adiciona o HelpCommanda ela usando um método cascade ( ..addCommand) que permite chamar um método em um objeto diretamente após criá-lo e, em seguida, executa o executor de comandos com os argumentos da linha de comando.

<<<<<<< Updated upstream
Codigo: import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner()..addCommand(HelpCommand());
  commandRunner.run(arguments);
}

Saida padrao ao executar o codigo:

Codigo: dart run bin/cli.dart help

Saida: Usage: dart bin/cli.dart <command> [commandArg?] [...options?]
 help:  Prints usage information to the command line.



Codigo: 
 

import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner()..addCommand(HelpCommand());
  commandRunner.run(arguments);
}

-------------------------------------------------------------------------------

Versao: 0.0.20
<<<<<<< Updated upstream

Data: 11/06/2026

Descricao do codigo: Tarefa 3: Atualize o arquivo cli.dart para usar o novo tratamento de erros.
#
Modifique cli/bin/cli.dartpara usar o novo tratamento de erros em CommandRunner.

Abra o cli/bin/cli.dartarquivo.

Atualize a mainfunção para passar uma onErrorfunção para o CommandRunner:

cli/bin/cli.dart
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  // [Step 6 update] Add onError method
  var commandRunner = CommandRunner(
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}
Este código passa uma onErrorfunção de retorno de chamada para o CommandRunnerconstrutor. Se ocorrer um erro durante a execução de um comando, a onErrorfunção de retorno de chamada é invocada com o objeto de erro. A função de retorno de chamada verifica se o erro é um `Error` Errorou um `Error` Exception. Se for um `Error` Error, ele é relançado. Se for um `Error` Exception, ele é impresso no console.
=======
>>>>>>> Stashed changes

Data: 12/06/2026

Descricao do codigo: Tarefa 3: Atualize o arquivo cli.dart para usar o novo tratamento de erros.
#
Modifique cli/bin/cli.dartpara usar o novo tratamento de erros em CommandRunner.

Abra o cli/bin/cli.dartarquivo.

Atualize a mainfunção para passar uma onErrorfunção para o CommandRunner:

cli/bin/cli.dart
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  // [Step 6 update] Add onError method
  var commandRunner = CommandRunner(
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}
Este código passa uma onErrorfunção de retorno de chamada para o CommandRunnerconstrutor. Se ocorrer um erro durante a execução de um comando, a onErrorfunção de retorno de chamada é invocada com o objeto de erro. A função de retorno de chamada verifica se o erro é um `Error` Errorou um `Error` Exception. Se for um `Error` Error, ele é relançado. Se for um `Error` Exception, ele é impresso no console.

Codigo: 

import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  // [Step 6 update] Add onError method
  var commandRunner = CommandRunner(
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}

Saida Padrao ao executar o codigo:

Comando: dart run bin/cli.dart invalid_command

Saida: ArgumentException: The first word of input must be a command.

-------------------------------------------------------------------------------

Versao: 0.0.21

Data: 12/06/2026

Descricao do codigo: 

Tarefa 3: Use o onOutputretorno de chamada
#
Por fim, atualize seu aplicativo principal para usar o novo onOutputrecurso.

Abra o cli/bin/cli.dartarquivo.

Atualize a mainfunção para passá-la onOutputpara o CommandRunner. Você também precisará adicionar uma importação para console.darttornar a writefunção disponível.

import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner(
    onOutput: (String output) async {
      await write(output);
    },
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
>>>>>>> Stashed changes
  commandRunner.run(arguments);
}

Saida Padrao ao executar o codigo:

Comando: dart run bin/cli.dart invalid_command

Saida: ArgumentException: The first word of input must be a command.
 
-------------------------------------------------------------------------------

Codigo valido ate aqui:

Codigo:

import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  // [Step 6 update] Add onError method
  var commandRunner = CommandRunner(
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}


Saida Padrao ao executar o codigo:

Comando: dart run bin/cli.dart help --verbose

Saida:

-------------------------------------------------------------------------------

Codigo valido ate aqui:

Codigo:
*/
import 'package:command_runner/command_runner.dart';

const version = '0.0.1';

void main(List<String> arguments) {
  var commandRunner = CommandRunner(
    onOutput: (String output) async {
      await write(output);
    },
    onError: (Object error) {
      if (error is Error) {
        throw error;
      }
      if (error is Exception) {
        print(error);
      }
    },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
}

