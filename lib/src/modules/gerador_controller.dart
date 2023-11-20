import 'dart:io';

class GeradorController {
  Future<void> gerarArquivo(
    Map<String, dynamic> map,
  ) async {
    final File arquivo = File("lib/src/modules/i18n_export.dart");
    late IOSink sink;

    try {
      sink = arquivo.openWrite(mode: FileMode.write);

      // Adicionar os imports ou qualquer outro conteúdo do arquivo, se necessário
      sink.write("class I18n {\n");
      for (var entry in map.entries) {
        String chave = entry.key;
        // Adicionar a linha de código ao arquivo
        sink.writeln('  static String $chave = "$chave";');
      }
      sink.write("}");

      // Fechar o arquivo
      await sink.flush();
    } catch (e) {
      print("Erro ao escrever no arquivo: $e");
    } finally {
      // Fechar o arquivo
      sink.close();
    }

    print("Arquivo gerado: ");
  }
}
