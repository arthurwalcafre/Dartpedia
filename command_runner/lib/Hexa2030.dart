// Aluno 1 iniciando simulador da copa de 2026

import: 'dart:io';

enum Grupo { A, B, C, D, E, F, G, H, I, J, K, L } 

class Selecao {
  String nome;
  Grupo grupo;
  int pontos = 0;
  int golsPro = 0;
  int golsSofridos = 0;
  int saldoGols = 0;
  int cartoesAmarelos = 0;	
  int cartoesVermelhos = 0;
  int rankingFIFA;

  Selecao({required this.nome, required this.grupo, required this.rankingFIFA});

  int get saldoGols => golsPro - golsSofridos;

  

  Map<String, int> confrontosDiretos = {};
}

// Parte 1 aluno 1 finalizada

// Aluno 3 modelando os criterios de desempate

class Partida {
  final Selecao timeA;
  final Selecao timeB;
  final int golsA;
  final int golsB;

  Partida(this.timeA, this.timeB, this.golsA, this.golsB);
}

class Classificacao {
  static void ordenarTabela(
      List<Selecao> selecoes,
      List<Partida> partidas,
      ) {

    selecoes.sort((a, b) {

            if (a.pontos != b.pontos) {
        return b.pontos.compareTo(a.pontos);
      }

            if (a.saldoGols != b.saldoGols) {
        return b.saldoGols.compareTo(a.saldoGols);
      }
      
            if (a.golsPro != b.golsPro) {
        return b.golsPro.compareTo(a.golsPro);
      }

            for (var jogo in partidas) {

        bool confronto =
            (jogo.timeA == a && jogo.timeB == b) ||
            (jogo.timeA == b && jogo.timeB == a);

        if (confronto) {

          if (jogo.timeA == a) {
            if (jogo.golsA > jogo.golsB) return -1;
            if (jogo.golsA < jogo.golsB) return 1;
          } else {
            if (jogo.golsB > jogo.golsA) return -1;
            if (jogo.golsB < jogo.golsA) return 1;
          }

          break;
        }
      }

      int fairPlayA = a.cartoesAmarelos + (a.cartoesVermelhos * 3);
      int fairPlayB = b.cartoesAmarelos + (b.cartoesVermelhos * 3);

      if (fairPlayA != fairPlayB) {
        return fairPlayA.compareTo(fairPlayB);
      }

      return a.rankingFifa.compareTo(b.rankingFifa);
    });
  }

  static void mostrarTabela(List<Selecao> selecoes) {
    print("==============================================");
    print("Pos | Seleção         | Pts | SG | GP | FIFA");
    print("----------------------------------------------");

    for (int i = 0; i < selecoes.length; i++) {
      var s = selecoes[i];

      print(
          "${i + 1}º  | ${s.nome.padRight(15)} | "
          "${s.pontos.toString().padLeft(3)} | "
          "${s.saldoGols.toString().padLeft(2)} | "
          "${s.golsPro.toString().padLeft(2)} | "
          "${s.rankingFifa}º");
    }
  }
}

// Parte 3 aluno 3 finalizada
