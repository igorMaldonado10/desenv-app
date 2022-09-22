import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override //Sobreescrever
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      drawer: Drawer(),
      appBar: new AppBar(
        title: new Text(
          'Calculadora - Simples',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      // ignore: unnecessary_new
      body: new Container(
        padding: const EdgeInsets.all(40),
        // ignore: unnecessary_new
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Texto que mostra o resultado do cálculo
              // ignore: unnecessary_new
              new Text(
                'Resultado: ${resultado.toStringAsFixed(2)}',
                style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),

              //Campo de Texto (input do valor 1)
              new TextField /*Campo de texto*/ (
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: 'Informe o valor 1:'),
                controller: t1,
              ),

              //Campo de Texto (input do valor 2)
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: 'Informe o valor 2:'),
                controller: t2,
              ),

              // Espaçamento depois dos inputs
              new Padding(padding: const EdgeInsets.only(top: 20)),
              /*Apenas no topo 20 pixels de espaço*/

              // Nova linha (row)
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    // child: new Text("+"),
                    child: new Text(
                      '+',
                      style: new TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blueAccent,
                    onPressed: somar,
                  ),
                  new MaterialButton(
                    // child: new Text("+"),
                    child: new Text(
                      'x',
                      style: new TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blueAccent,
                    onPressed: multiplicar,
                  ),
                ],
              ),

              new Padding(padding: const EdgeInsets.only(top: 20)),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      // child: new Text("-"),
                      child: new Text(
                        '-',
                        style: new TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),

                      color: Colors.blueAccent,
                      onPressed: subtrair,
                    ),
                    new MaterialButton(
                        color: Colors.blueAccent,
                        child: new Text(
                          '/',
                          style: new TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: divisao),
                  ]),

              new Padding(padding: const EdgeInsets.only(top: 20)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.grey,
                      child: new Text(
                        'Limpar',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: limpar)
                ],
              ),
            ]),
      ),
    );
  } //Fecha o método Build

// Atributos
  num num1 = 0;
  num num2 = 0;
  num resultado = 0;

  TextEditingController t1 = new TextEditingController(text: '');
  TextEditingController t2 = new TextEditingController(text: '');

  void somar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      num resultado = num1 + num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  // void resto() {
  //   setState(() {
  //     num1 = int.parse(t1.text);
  //     num2 = int.parse(t2.text);
  //     if (num1 % 2 && num2 % 2 == 0) {
  //       resultado12 = 'par';
  //       // } else if (num1 % 2 && num2 % 2 != 0) {
  //       //   resultado13 = 'impar';
  //     }
  //   });
  // }

  void subtrair() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void divisao() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = '';
      t2.text = '';
      resultado = 0; /*{*/
      //   resultado = 'Palmeiras n t mundial';
      // }
    });
  }
} //Fecha a Classe CalculadoraState

// NADA deve ser adicionado depois do RETURN, porque não será lido
