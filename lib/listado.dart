import 'package:ejercicio_6/reserva.dart';
import 'package:flutter/material.dart';

class Listado extends StatefulWidget {
  const Listado({super.key});

  @override
  State<Listado> createState() => _ListadoState();
}

class _ListadoState extends State<Listado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Listado reservas"),
      ),
    );
  }
}