
import 'package:flutter/material.dart';

class AcompanhamentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acompanhamento"),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: Center(
        child: Text("Aqui será a tela de Acompanhamento", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
