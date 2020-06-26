import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criar transferência';
const _rotuloNumeroConta = 'Número da conta';
const _dicaNumeroConta = '0000';
const _rotuloValor = 'Valor';
const _dicaValor = '00.00';
const _textoBotao = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final _controllerCampoNumeroConta = TextEditingController();
  final _controllerCampoValor = TextEditingController();

  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controllerCampoNumeroConta,
              rotulo: _rotuloNumeroConta,
              dica: _dicaNumeroConta,
            ),
            Editor(
              controlador: _controllerCampoValor,
              rotulo: _rotuloValor,
              dica: _dicaValor,
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text(
                _textoBotao,
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () => _criarTransferencia(context),
            )
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int numero = int.tryParse(_controllerCampoNumeroConta.text);
    final double valor = double.tryParse(_controllerCampoValor.text);

    final transferencia = Transferencia(numero, valor);

    if (numero != null && valor != null) {
      Navigator.pop(context, transferencia);
    }
  }
}
