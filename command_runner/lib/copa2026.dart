import 'dart:io';

// =========================================================================
// ALUNO 1: O Modelador de Seleções (Classes e Enums)
// =========================================================================

enum Grupo { A, B, C, D, E, F, G, H, I, J, K, L }

class Selecao {
  String nome;
  Grupo grupo;
  int pontos = 0;
  int golsPro = 0;
  int golsSofridos = 0;
  int cartoesAmarelos = 0;
  int cartoesVermelhos = 0;
  int rankingFifa;

  Selecao({required this.nome, required this.grupo, required this.rankingFifa});

  int get saldoGols => golsPro - golsSofridos;

  Map<String, int> confrontosDiretos = {}; 
}

// =========================================================================
// ALUNO 4 (Parte 1): O Analista de Dados - Banco de Dados Centralizado (48 Seleções)
// =========================================================================

class BancoDadosCopa {
  static List<Selecao> inicializarSelecoes() {
    return [
      Selecao(nome: "México", grupo: Grupo.A, rankingFifa: 15),
      Selecao(nome: "África do Sul", grupo: Grupo.A, rankingFifa: 59),
      Selecao(nome: "Rep. Checa", grupo: Grupo.A, rankingFifa: 36),
      Selecao(nome: "Coreia do Sul", grupo: Grupo.A, rankingFifa: 22),

      Selecao(nome: "Canadá", grupo: Grupo.B, rankingFifa: 40),
      Selecao(nome: "Suíça", grupo: Grupo.B, rankingFifa: 12), // Corrigido aqui!
      Selecao(nome: "Malásia", grupo: Grupo.B, rankingFifa: 130),
      Selecao(nome: "Togo", grupo: Grupo.B, rankingFifa: 110),

      Selecao(nome: "Estados Unidos", grupo: Grupo.C, rankingFifa: 11),
      Selecao(nome: "Uruguai", grupo: Grupo.C, rankingFifa: 14),
      Selecao(nome: "Marrocos", grupo: Grupo.C, rankingFifa: 13),
      Selecao(nome: "Fiji", grupo: Grupo.C, rankingFifa: 160),

      Selecao(nome: "Brasil", grupo: Grupo.D, rankingFifa: 5),
      Selecao(nome: "Inglaterra", grupo: Grupo.D, rankingFifa: 4),
      Selecao(nome: "Gana", grupo: Grupo.D, rankingFifa: 64),
      Selecao(nome: "Nova Zelândia", grupo: Grupo.D, rankingFifa: 94),

      Selecao(nome: "Argentina", grupo: Grupo.E, rankingFifa: 1),
      Selecao(nome: "França", grupo: Grupo.E, rankingFifa: 2),
      Selecao(nome: "Austrália", grupo: Grupo.E, rankingFifa: 24),
      Selecao(nome: "Jamaica", grupo: Grupo.E, rankingFifa: 55),

      Selecao(nome: "Bélgica", grupo: Grupo.F, rankingFifa: 3),
      Selecao(nome: "Portugal", grupo: Grupo.F, rankingFifa: 6),
      Selecao(nome: "Escócia", grupo: Grupo.F, rankingFifa: 39),
      Selecao(nome: "Iraque", grupo: Grupo.F, rankingFifa: 58),

      Selecao(nome: "Espanha", grupo: Grupo.G, rankingFifa: 8),
      Selecao(nome: "Japão", grupo: Grupo.G, rankingFifa: 18),
      Selecao(nome: "Nigéria", grupo: Grupo.G, rankingFifa: 30),
      Selecao(nome: "Honduras", grupo: Grupo.G, rankingFifa: 78),

      Selecao(nome: "Holanda", grupo: Grupo.H, rankingFifa: 7),
      Selecao(nome: "Itália", grupo: Grupo.H, rankingFifa: 9),
      Selecao(nome: "Egito", grupo: Grupo.H, rankingFifa: 36),
      Selecao(nome: "Ucrânia", grupo: Grupo.H, rankingFifa: 22),

      Selecao(nome: "Croácia", grupo: Grupo.I, rankingFifa: 10),
      Selecao(nome: "Equador", grupo: Grupo.I, rankingFifa: 31),
      Selecao(nome: "Irã", grupo: Grupo.I, rankingFifa: 20),
      Selecao(nome: "Zâmbia", grupo: Grupo.I, rankingFifa: 86),

      Selecao(nome: "Alemanha", grupo: Grupo.J, rankingFifa: 16),
      Selecao(nome: "Dinamarca", grupo: Grupo.J, rankingFifa: 19),
      Selecao(nome: "Argélia", grupo: Grupo.J, rankingFifa: 43),
      Selecao(nome: "Omã", grupo: Grupo.J, rankingFifa: 73),

      Selecao(nome: "Chile", grupo: Grupo.K, rankingFifa: 42),
      Selecao(nome: "Suécia", grupo: Grupo.K, rankingFifa: 23),
      Selecao(nome: "Mali", grupo: Grupo.K, rankingFifa: 44),
      Selecao(nome: "Catar", grupo: Grupo.K, rankingFifa: 50),

      Selecao(nome: "Sérvia", grupo: Grupo.L, rankingFifa: 32),
      Selecao(nome: "Paraguai", grupo: Grupo.L, rankingFifa: 56),
      Selecao(nome: "Camarões", grupo: Grupo.L, rankingFifa: 49),
      Selecao(nome: "Panamá", grupo: Grupo.L, rankingFifa: 45)
    ];
  }
}

// =========================================================================
// ALUNO 3: O Mestre dos Critérios de Desempate (Ordenação Oficial FIFA 2026)
// =========================================================================

class Classificador {
  static void ordenarTabela(List<Selecao> lista) {
    lista.sort((b, a) {
      if (a.pontos != b.pontos) return a.pontos.compareTo(b.pontos);
      if (a.saldoGols != b.saldoGols) return a.saldoGols.compareTo(b.saldoGols);
      if (a.golsPro != b.golsPro) return a.golsPro.compareTo(b.golsPro);

      int confronto = (a.confrontosDiretos[b.nome] ?? 0).compareTo(b.confrontosDiretos[a.nome] ?? 0);
      if (confronto != 0) return confronto;

      int pontosFairPlayA = (a.cartoesVermelhos * 3) + a.cartoesAmarelos;
      int pontosFairPlayB = (b.cartoesVermelhos * 3) + b.cartoesAmarelos;
      if (pontosFairPlayA != pontosFairPlayB) {
        return pontosFairPlayA.compareTo(pontosFairPlayB);
      }

      return b.rankingFifa.compareTo(a.rankingFifa);
    });
  }
}

// =========================================================================
// ALUNO 2 e ALUNO 4 (Parte 2): Registro de Partidas e Tratamento de Erros
// =========================================================================

void registrarResultadoJogo(List<Selecao> selecoes) {
  print("\n--- REGISTRAR RESULTADO DE JOGO ---");
  for (int i = 0; i < selecoes.length; i++) {
    print("${i + 1}. ${selecoes[i].nome}");
  }

  try {
    stdout.write("Escolha o Time A (número): ");
    int idxA = int.parse(stdin.readLineSync()!) - 1;

    stdout.write("Escolha o Time B (número): ");
    int idxB = int.parse(stdin.readLineSync()!) - 1;

    if (idxA == idxB || idxA < 0 || idxA >= selecoes.length || idxB < 0 || idxB >= selecoes.length) {
      throw FormatException();
    }

    Selecao timeA = selecoes[idxA];
    Selecao timeB = selecoes[idxB];

    stdout.write("Gols do ${timeA.nome}: ");
    int golsA = int.parse(stdin.readLineSync()!);
    
    stdout.write("Gols do ${timeB.nome}: ");
    int golsB = int.parse(stdin.readLineSync()!);

    stdout.write("Cartões Amarelos do ${timeA.nome}: ");
    int caA = int.parse(stdin.readLineSync()!);
    
    stdout.write("Cartões Vermelhos do ${timeA.nome}: ");
    int cvA = int.parse(stdin.readLineSync()!);

    stdout.write("Cartões Amarelos do ${timeB.nome}: ");
    int caB = int.parse(stdin.readLineSync()!);
    
    stdout.write("Cartões Vermelhos do ${timeB.nome}: ");
    int cvB = int.parse(stdin.readLineSync()!);

    // Processamento
    timeA.golsPro += golsA;
    timeA.golsSofridos += golsB;
    timeA.cartoesAmarelos += caA;
    timeA.cartoesVermelhos += cvA;

    timeB.golsPro += golsB;
    timeB.golsSofridos += golsA;
    timeB.cartoesAmarelos += caB;
    timeB.cartoesVermelhos += cvB;

    if (golsA > golsB) {
      timeA.pontos += 3;
      timeA.confrontosDiretos[timeB.nome] = 3;
      timeB.confrontosDiretos[timeA.nome] = 0;
    } else if (golsB > golsA) {
      timeB.pontos += 3;
      timeB.confrontosDiretos[timeA.nome] = 3;
      timeA.confrontosDiretos[timeB.nome] = 0;
    } else {
      timeA.pontos += 1;
      timeB.pontos += 1;
      timeA.confrontosDiretos[timeB.nome] = 1;
      timeB.confrontosDiretos[timeA.nome] = 1;
    }

    print("\nJogo registrado com sucesso!");

  } on FormatException {
    print("\nErro: Digite um placar ou valor numérico válido!");
  } catch (e) {
    print("\nOcorreu um erro inesperado: $e");
  }
}

void exibirClassificacao(List<Selecao> selecoes, String nomeGrupo) {
  Classificador.ordenarTabela(selecoes);

  print("\n=== SIMULADOR GRUPO $nomeGrupo - COPA 2026 ===");
  print("Pos | ${'Seleção'.padRight(16)} | Pts | SG | GP | Ranking FIFA");
  print("---------------------------------------------------------");
  
  for (int i = 0; i < selecoes.length; i++) {
    var s = selecoes[i];
    String pos = "${i + 1}º";
    String sinalSaldo = s.saldoGols > 0 ? "+" : "";
    
    print("$pos | ${s.nome.padRight(16)} |  ${s.pontos}  | $sinalSaldo${s.saldoGols}  |  ${s.golsPro} | ${s.rankingFifa}º");
    
    if (i == 1) {
      print("--------------------------------------------------------- (Zona de Classificação Direta)");
    }
  }
  print("---------------------------------------------------------");
}

// =========================================================================
// INTERFACE CLI E MENU PRINCIPAL MULTI-GRUPO
// =========================================================================

void main() async {
  print("Inicializando dados da Copa do Mundo FIFA 2026...");
  await Future.delayed(Duration(seconds: 1));
  
  List<Selecao> todasSelecoes = BancoDadosCopa.inicializarSelecoes();
  String grupoAtivo = "A";
  
  bool rodando = true;
  while (rodando) {
    List<Selecao> selecoesDoGrupo = todasSelecoes
        .where((s) => s.grupo.toString().split('.').last == grupoAtivo)
        .toList();

    print("\n==============================================");
    print("STATUS: Gerenciando o GRUPO $grupoAtivo (48 Seleções Ativas)");
    print("==============================================");
    print("1. Alterar Grupo Atual (A até L)");
    print("2. Registrar Resultado de Jogo");
    print("3. Ver Classificação do Grupo $grupoAtivo");
    print("4. Sair");
    stdout.write("Selecione uma opção: ");
    
    String? opcao = stdin.readLineSync();
    
    switch (opcao) {
      case '1':
        stdout.write("Digite a letra do grupo desejado (De A a L): ");
        String? novaLetra = stdin.readLineSync()?.toUpperCase();
        if (novaLetra != null && RegExp(r'^[A-L]$').hasMatch(novaLetra)) {
          grupoAtivo = novaLetra;
          print("Mudou para o Grupo $grupoAtivo!");
        } else {
          print("\nErro: Grupo inválido! Escolha uma letra entre A e L.");
        }
        break;
      case '2':
        registrarResultadoJogo(selecoesDoGrupo);
        break;
      case '3':
        exibirClassificacao(selecoesDoGrupo, grupoAtivo);
        break;
      case '4':
        print("\nFechando o simulador da Copa 2026. Até logo!");
        rodando = false;
        break;
      default:
        print("\nOpção inválida! Digite um número de 1 a 4.");
    }
  }
}
