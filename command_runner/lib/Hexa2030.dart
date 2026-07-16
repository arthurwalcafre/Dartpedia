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
