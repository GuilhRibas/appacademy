import 'package:flutter/material.dart';
import 'package:n2/main.dart';
import 'package:n2/suporte-duvidas.dart';

void main() => runApp(Agendamento());

class Agendamento extends StatefulWidget {
  const Agendamento({Key? key}) : super(key: key);

  @override
  _AgendamentoState createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF002e3d),
      appBar: AppBar(
        title: Text(
          'Agendamentos',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white
        ),
        body: Scrollbar(
          child: ListView(
            padding: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
            children: <Widget>[
              Title(color: Colors.white, child: Text('Agendamento - Biceps e Triceps',style: TextStyle(color: Color(0xFFff6a00), fontSize: 20),)),
            Card(
                child: ListTile(
                    title: Text(
                        'Olá! seu comparecimento foi agendado para o dia 25/08/21 ( Quinta-Feira ) às 15h ( Quinze horas ) para o treino de Biceps e Triceps. Contamos com sua presença. :)'
                        )
                        )
                        ),
                        Image.asset('imagens/treino.jpg', width: 100,),
                        Divider(),
                        Title(color: Colors.white, child: Text('Agendamento - Costa e Peito',style: TextStyle(color: Color(0xFFff6a00), fontSize: 20),)),
            Card(
                child: ListTile(
                    title: Text(
                        'Olá! seu comparecimento foi agendado para o dia 26/08/21 ( Sexta-Feira ) às 15h ( Quinze horas ) para o treino de Costa e Peito. Contamos com sua presença. :)'
                        )
                        )
                        ),
                        Image.asset('imagens/costas.jpg', width: 100,),
                        Divider(),
                        Title(color: Colors.white, child: Text('Agendamento - Pernas',style: TextStyle(color: Color(0xFFff6a00), fontSize: 20),)),
            Card(
                child: ListTile(
                    title: Text(
                        'Olá! seu comparecimento foi agendado para o dia 29/08/21 ( Segunda-Feira ) às 15h ( Quinze horas ) para o treino de Pernas. Contamos com sua presença. :)'
                        )
                        )
                        ),
                        Image.asset('imagens/pernas.jpg', width: 100, height: 300,),
                        Divider(),
                        ButtonTheme(
            height: 60.0,
            child: RaisedButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SuportHome()))
              },
              child: Text('Suporte',
              style: TextStyle(color: Color(0xFF002e3d), fontSize: 20),
              ),
              color: Colors.white,
              )
              ),
              Divider(),
              ButtonTheme(
            height: 60.0,
            child: RaisedButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio()))
              },
              child: Text('Sair',
              style: TextStyle(color: Color(0xFF002e3d), fontSize: 20),
              ),
              color: Colors.white,
              )
              ),
                        ]
            // 1
            ),
            )
    );
  }
}
