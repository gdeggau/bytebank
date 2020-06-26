import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, index) {
            return ItemTransferencia(widget._transferencias[index]);
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia> future =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida) =>
            atualiza(transferenciaRecebida)
          );
        },
      ),
    );
  }

  void atualiza(Transferencia transferenciaRecebida) {
    setState(() {
      if (transferenciaRecebida != null) {
        widget._transferencias.add(transferenciaRecebida);
      }
    });
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
        ),
        title: Text(this._transferencia.valor.toString()),
        subtitle: Text(this._transferencia.conta.toString()),
      ),
    );
  }
}