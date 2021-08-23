import 'package:flutter/material.dart';
import 'package:n2/agendamento.dart';
import 'package:n2/main.dart';

void main() => runApp(Cadastro());

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002e3d),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('imagens/cadastroimg.png', height: 200,),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            decoration: InputDecoration(labelText: "Nome de Usuário",
            prefixIcon: Icon(Icons.person, color: Color(0xFFff6a00),),
             labelStyle: TextStyle(color: Color(0xFFff6a00))
             ),
          ),
          
          Divider(),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            decoration: InputDecoration(labelText: "E-mail",
            prefixIcon: Icon(Icons.email, color: Color(0xFFff6a00)),
             labelStyle: TextStyle(color: Color(0xFFff6a00))
             ),
          ),
          Divider(),
          TextFormField(
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.number,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            decoration: InputDecoration(labelText: "Senha",
            prefixIcon: Icon(Icons.vpn_key, color: Color(0xFFff6a00),),
             labelStyle: TextStyle(color: Color(0xFFff6a00))
             ),
          ),
          
          Divider(),
          ButtonTheme(
            height: 60.0,
            child: RaisedButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Agendamento()))
              },
              child: Text('Cadastrar',
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
              child: Text('Voltar',
              style: TextStyle(color: Color(0xFF002e3d), fontSize: 20),
              ),
              color: Colors.white,
              )
              )
        ],
      ),
      ),
      ),
      );
      }
      }