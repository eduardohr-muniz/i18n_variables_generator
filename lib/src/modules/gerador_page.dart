import 'package:flutter/material.dart';
import 'package:i18n_variables_generator/src/modules/gerador_controller.dart';
import 'package:i18n_variables_generator/src/modules/map_i18n.dart';

class GeradorPage extends StatelessWidget {
  const GeradorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = GeradorController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              controller.gerarArquivo(mapI18n);
            },
            child: const Text("gerar")),
      ),
    );
  }
}
