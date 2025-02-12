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
      body: ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: Reserva.nombresReservas.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        /*
        height: 50,
        child: Center(child: Text('${Reserva.reservas[index]} ha reservado a fecha ' + '${Reserva.reservas[index + 1]}')),
        */
        child: ListTile(
          title: Text("${Reserva.nombresReservas[index]}"),
          subtitle: Text("${Reserva.fechasReservas[index]}"),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  ),
    );
  }
}