import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Definindo a cor inicial para azul
          brightness: Brightness.light, // Definir como claro
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade800, // Azul escuro para o AppBar
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue.shade600, // Azul vibrante para o FAB
        ),
        textTheme: const TextTheme(
        ),
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue.shade50, // Azul muito claro para o fundo
                child: const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blue.shade100, // Azul claro para a primeira coluna
                      child: const Text('Primeira Coluna'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300, // Azul médio para a caixa
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue.shade500, // Azul mais escuro para a borda
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // Sombra suave
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Text(
                        'Meu Aplicativo',
                        style: TextStyle(color: Colors.white), // Texto branco
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blue.shade100, // Azul claro para a terceira coluna
                      child: const Text('Terceira Coluna'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue.shade50, // Azul muito claro para o fundo
                child: const Text(
                  'Layout Inferior',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}