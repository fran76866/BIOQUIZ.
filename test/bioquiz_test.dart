
import 'package:test/test.dart';
import '../bin/bioquiz.dart' show
    normalizarResposta,
    respostaValida,
    verificarResposta,
    calcularPontuacao;

void main() {
  group('Testes do BIOQUIZ', () {
    test('Deve aceitar letras minúsculas e espaços', () {
      expect(normalizarResposta('  b  '), 'B');
    });

    test('Deve aceitar somente A, B, C ou D', () {
      expect(respostaValida('A'), true);
      expect(respostaValida('b'), true);
      expect(respostaValida('C'), true);
      expect(respostaValida('D'), true);
      expect(respostaValida('X'), false);
      expect(respostaValida(''), false);
    });

    test('Deve verificar se a resposta está correta', () {
      expect(verificarResposta('b', 'B'), true);
      expect(verificarResposta('A', 'B'), false);
    });

    test('Deve calcular a pontuação corretamente', () {
      List<String> respostas = ['B', 'C', 'A', 'X', 'B'];
      List<String> corretas = ['B', 'C', 'A', 'D', 'B'];

      expect(calcularPontuacao(respostas, corretas), 4);
    });
  });
}

