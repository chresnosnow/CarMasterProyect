import 'package:flutter/material.dart';
import 'package:logindemo/main.dart';

class RestoreAccount extends StatefulWidget {
  @override
  _RestoreAccountState createState() => _RestoreAccountState();
}

class _RestoreAccountState extends State<RestoreAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carmaster Account'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.privacy_tip,
                size: 50.0,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Atención:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.orangeAccent,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          Container(
            height: 100.0,
            width: 400.0,
            child: Text(
              'Coloca el correo asociado a tu cuenta CarMaster, enviaremos un correo de verificación.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                  hintText: 'Ingrese el Correo a Recuperar'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
              child: Text(
                'Enviar Solicitud',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
