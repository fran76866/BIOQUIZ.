
import 'dart:io';

void main() {
  print('================================');
  print('          🧬 BIOQUIZ');
  print('       QUIZ DE BIOLOGIA');
  print('================================');

  print('\nSeja bem-vindo(a) ao BIOQUIZ!');
  stdout.write('Digite seu nome: ');

  String nome = stdin.readLineSync() ?? '';

  while (nome.trim().isEmpty) {
    print('O nome não pode ficar vazio!');
    stdout.write('Digite seu nome: ');
    nome = stdin.readLineSync() ?? '';
  }

  print('\nOlá, $nome! Vamos começar o desafio!');
  print('Responda às perguntas usando A, B, C ou D.\n');

  List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': '1. Qual é a unidade básica da vida?',
      'opcoes': [
        'A) Átomo',
        'B) Célula',
        'C) Tecido',
        'D) Órgão'
      ],
      'correta': 'B'
    },
    {
      'pergunta': '2. Qual organela é responsável pela produção de energia?',
      'opcoes': [
        'A) Ribossomo',
        'B) Lisossomo',
        'C) Mitocôndria',
        'D) Núcleo'
      ],
      'correta': 'C'
    },
    {
      'pergunta': '3. Qual molécula armazena as informações genéticas?',
      'opcoes': [
        'A) DNA',
        'B) Água',
        'C) Glicose',
        'D) Lipídio'
      ],
      'correta': 'A'
    },
    {
      'pergunta': '4. Como se chama o processo pelo qual as plantas produzem seu alimento?',
      'opcoes': [
        'A) Respiração',
        'B) Digestão',
        'C) Fermentação',
        'D) Fotossíntese'
      ],
      'correta': 'D'
    },
    {
      'pergunta': '5. Qual sistema do corpo humano transporta o sangue?',
      'opcoes': [
        'A) Sistema digestório',
        'B) Sistema circulatório',
        'C) Sistema nervoso',
        'D) Sistema respiratório'
      ],
      'correta': 'B'
    },
  ];

  int pontuacao = 0;

  for (var pergunta in perguntas) {
    print('\n--------------------------------');
    print(pergunta['pergunta']);

    for (var opcao in pergunta['opcoes']) {
      print(opcao);
    }

    String resposta = '';

    while (!['A', 'B', 'C', 'D'].contains(resposta)) {
      stdout.write('\nSua resposta: ');
      resposta = (stdin.readLineSync() ?? '').trim().toUpperCase();

      if (!['A', 'B', 'C', 'D'].contains(resposta)) {
        print('Resposta inválida! Digite A, B, C ou D.');
      }
    }

    if (resposta == pergunta['correta']) {
      print('Muito bem! Você acertou! 🎉');
      pontuacao++;
    } else {
      print('Você errou! A resposta correta era ${pergunta['correta']}.');
    }
  }

  mostrarResultado(nome, pontuacao, perguntas.length);
}

void mostrarResultado(String nome, int pontuacao, int total) {
  print('\n================================');
  print('          RESULTADO');
  print('================================');

  print('Jogador(a): $nome');
  print('Pontuação: $pontuacao/$total');

  if (pontuacao == total) {
    print('Excelente! Você acertou tudo!');
  } else if (pontuacao >= 3) {
    print('Muito bom! Você tem bons conhecimentos!');
  } else {
    print('Continue estudando! Você vai melhorar!');
  }

  print('\nObrigado por jogar BIOQUIZ!');
  print('================================');
}
