import 'package:flutter/material.dart';
import 'HomePage.dart';

class ContratPage extends StatefulWidget {
  @override
  _ContratPageState createState() => _ContratPageState();
}

class _ContratPageState extends State<ContratPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carmaster Contrat'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset('asset/images/advertencia1.png'),
            ),
          ),
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
            height: 300.0,
            width: 300.0,
            child: Expanded(
              child: Text(
                'Por el momento no tienes contratos Activos!',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
