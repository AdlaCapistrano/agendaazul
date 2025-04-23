import 'package:flutter/material.dart';

// Definindo as telas que serão acessadas pelo menu lateral
class AgendaConsultasPage extends StatelessWidget {
  const AgendaConsultasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda de Consultas'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: const Center(
        child: Text(
          'Aqui você pode agendar suas consultas.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AcompanhamentoPage extends StatelessWidget {
  const AcompanhamentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acompanhamento'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: const Center(
        child: Text(
          'Aqui você pode ver as informações de acompanhamento.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class RecursosApoioPage extends StatelessWidget {
  const RecursosApoioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recursos de Apoio'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: const Center(
        child: Text(
          'Aqui estão os recursos de apoio disponíveis.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ConfiguracoesPerfilPage extends StatelessWidget {
  const ConfiguracoesPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações de Perfil'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: const Center(
        child: Text(
          'Aqui você pode configurar seu perfil.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AjudaFAQPage extends StatelessWidget {
  const AjudaFAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajuda/FAQ'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      body: const Center(
        child: Text(
          'Aqui estão as perguntas frequentes e ajuda.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Tela principal com menu lateral
class HomePage extends StatefulWidget {
  const HomePage({super.key, required String userName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "Nome do Usuário"; // Nome do usuário como variável de estado

  // Função para alterar o nome do usuário
  void updateUserName(String newName) {
    setState(() {
      userName = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de navegação superior
      appBar: AppBar(
        title: const Text('Agenda Azul'),
        backgroundColor: const Color(0xFF264AA7),
      ),
      
      // Menu lateral
      drawer: Drawer(
        backgroundColor: const Color(0xFFEFF6FF),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(userName), // Nome do usuário vindo da variável de estado
              accountEmail: const Text('email@exemplo.com'), // Email fictício, substitua conforme necessário
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Color(0xFF264AA7),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF264AA7),
              ),
            ),
            // Lista de opções do menu lateral
            ListTile(
              title: const Text('Agenda de Consultas'),
              leading: const Icon(Icons.calendar_today),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgendaConsultasPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Informações de Acompanhamento'),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AcompanhamentoPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Recursos de Apoio'),
              leading: const Icon(Icons.support),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecursosApoioPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Configurações de Perfil'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfiguracoesPerfilPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Ajuda/FAQ'),
              leading: const Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AjudaFAQPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Sair'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                // Ação ao clicar em "Sair"
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      
      // Corpo da tela principal
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bem-vindo ao Agenda Azul!',
              style: TextStyle(fontSize: 24, color: Color(0xFF264AA7)),
            ),
            ElevatedButton(
              onPressed: () {
                // Atualizar o nome do usuário para um novo valor
                updateUserName("Novo Nome do Usuário");
              },
              child: const Text('Alterar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
