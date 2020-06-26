import 'package:flutter/material.dart';

class Jogada extends StatefulWidget {
  @override
  _JogadaState createState() => _JogadaState();
}

class _JogadaState extends State<Jogada> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '11111',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        //leading: Container(),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jogada ' + '1' + '/' + '',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'Roboto'
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(0.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.orange,
                  ),
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.9,
                  child: produtoAtual != null ? Column(
                    children: <Widget>[
                      Image.network(
                        produtoAtual.imagem,
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      Text('Valor: ' + produtoAtual.valor.toStringAsPrecision(2))
                    ],
                  ):
                  CircularProgressIndicator(),
                ),
              )
            ],
          ),


        ),
      ),
    );
  }
}