import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 6',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ejercicio 6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Añadir nueva reserva",
              style: TextStyle(
                fontSize: 30,
              ),
              ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Nombre de la persona"),
              ),
            ),
            ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Fecha"),
              ),
            ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Número de personas"),
              ),
            ),
            ),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Añadir reserva"),
              ),
          ],
        ),
      ),
    );
  }
}
