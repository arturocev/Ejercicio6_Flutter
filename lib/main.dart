
import 'package:ejercicio_6/listado.dart';
import 'package:ejercicio_6/reserva.dart';
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

  late TextEditingController controladorNombre;
  late TextEditingController controladorFecha;
  late TextEditingController controladorNumeroPersonas;

  void initState()
  {
    controladorFecha = TextEditingController();
    controladorNombre = TextEditingController();
    controladorNumeroPersonas = TextEditingController();
    super.initState();
  }

  void aniadirReserva() {
    Reserva.nombreReserva = controladorNombre.text;
    Reserva.fecha = controladorFecha.text;
    Reserva.numeroPersonas = int.parse(controladorNumeroPersonas.text);

    Reserva.nombresReservas.add(Reserva.nombreReserva);
    Reserva.fechasReservas.add(Reserva.fecha);
  }


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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
              "Añadir nueva reserva",
              style: TextStyle(
                fontSize: 30,
              ),
              ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
              controller: controladorNombre,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Nombre de la persona"),
              ),
            ),
            ),
            ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
                controller: controladorFecha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Fecha"),
              ),
            ),
            ),
            ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
              width: 300,
              child: TextField(
                controller: controladorNumeroPersonas,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Número de personas"),
              ),
            ),
            ),
            ),
              ],
            ),
            
            Padding(
              padding: 
            EdgeInsets.only(top: 30),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton.extended(onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => Listado()));
                }, 
                label: Text("Ver listado de reservas"),
                heroTag: "btn1",
                )
              ],
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FloatingActionButton.extended(onPressed: () {
              aniadirReserva();
              
            },
            label: Text("Añadir Reserva"),
            heroTag: "btn2",
            ),
            ),
          ],
        ),
      ),
    );
  }
}
