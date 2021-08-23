import 'package:flutter/material.dart';
import 'package:n2/agendamento.dart';
import 'package:n2/main.dart';

void main() => runApp(SuportHome());

class SuportHome extends StatefulWidget {
  const SuportHome({Key? key}) : super(key: key);

  @override
  _SuportHomeState createState() => _SuportHomeState();
}

class _SuportHomeState extends State<SuportHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002e3d),
      appBar: AppBar(
        title: Text(
          'Duvidas Frequentes',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.help_outline_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Card(
                child: ListTile(
                    title: Text(
                        'Tiramos um tempo para responder as perguntas diarias que recebemos! :)'))),
            // 1
            Card(
              child: ListTile(
                title: Text('Localização'),
                leading: Icon(Icons.place, size: 60.0, color: Color(0xFFff6a00),), 
                subtitle: Text(
                    'Nossa sede está localizada na cidade de Juvenas, bairro CR7, na rua robozinho Nº 7.'),
                trailing: Icon(Icons.place_outlined),
                isThreeLine: true,
              ),
            ),
            // 1

            // 2
            Card(
              child: ListTile(
                title: Text('Planos'),
                leading: Icon(Icons.credit_card, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    'Temos Plano mensal por RS 74,90, Plano Trimestral por RS 194,90, Plano Anual por RS719,00.'),
                trailing: Icon(Icons.payment_outlined),
                isThreeLine: true,
              ),
            ),
            // 2

            // 3
            Card(
              child: ListTile(
                title: Text('Horários'),
                leading: Icon(Icons.schedule, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    'Segunda à Sexta das 6h da manhã até 22h da noite. Sábado, Domingo e Feriados das 9h da manhã até 15h da tarde.'),
                trailing: Icon(Icons.watch_later_outlined),
                isThreeLine: true,
              ),
            ),
            // 3

            // 4
            Card(
              child: ListTile(
                title: Text('1º aula Experimental'),
                leading: Icon(Icons.class_, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    'Se é seu primeiro dia na academia, a passagem é por nossa conta! Assim você pode ter a liberdade de conhecer nosso espaço fazendo a aula experimental.'),
                trailing: Icon(Icons.first_page_outlined),
                isThreeLine: true,
              ),
            ),
            // 4

            // 5
            Card(
              child: ListTile(
                title: Text('Vestiario Fem. Masc.'),
                leading: Icon(Icons.wc, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    'Temos nossos Vestiarios, Femininos e masculinos. Ambos com espaço para se organizar e guardar seus pertences.'),
                trailing: Icon(Icons.people_outlined),
                isThreeLine: true,
              ),
            ),
            // 5

            // 6
            Card(
              child: ListTile(
                title: Text('Regras da Academia.'),
                leading: Icon(Icons.gavel, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    '1. Garrafa de água privada, toalha de rosto e máscara!\n\2. Guardar os Equipamentos logo depois de usar.\n\3. Proibido usar Jeans e chinelo.'),
                trailing: Icon(Icons.add_moderator_outlined),
                isThreeLine: true,
              ),
            ),
            // 6

            // 7
            Card(
              child: ListTile(
                title: Text('Contato'),
                leading: Icon(Icons.contact_mail, size: 60.0, color: Color(0xFFff6a00),),
                subtitle: Text(
                    'Você pode mandar seu assunto junto com sua mensagem \n\para nosso email: LifeFit@academia.com.br '),
                trailing: Icon(Icons.email_outlined),
                isThreeLine: true,
              ),
            ),
            Divider(),
            ButtonTheme(
            height: 60.0,
            child: RaisedButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Agendamento()))
              },
              child: Text('Agendamentos',
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
            // 7

            SizedBox(
              height: 50,
              width: 50,
              child: Container(
                color: Color(0xFF002e3d),
              ),
            )
          ],
        ),
      ),
    );
  }
}