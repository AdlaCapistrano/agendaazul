
import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: Center(
        child: Text("Aqui será a tela de Agenda", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
