import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
/*
Comentar linha = Ctrl + /
Comentar bloco = Ctrl + Shift + /
Identar Code = Ctrl + Alt + L
Deletar linha = Ctrl + Y
Copiar linha para baixo = Ctrl + D
Hot Reload = Ctrl + \
Wrap = Alt + Enter
Gerar toString, Getter and Setters = Alt + Insert
*/

void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaTransferencias(),
      theme: ThemeData(
        primaryColor: Colors.lightGreen[200],
        accentColor: Colors.green[400],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green[400],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
