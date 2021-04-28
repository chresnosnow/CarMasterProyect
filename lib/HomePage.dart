import 'package:flutter/material.dart';
import 'package:logindemo/ContratPage.dart';
import 'package:logindemo/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CarMaster Home'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.teal,
              ),
              title: Text(
                'Bienvenido Christian!',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ContratPage()));
              },
              child: Image.asset('asset/images/auto2.png'),
            ),
          ),
          Flexible(
            child: Text(
              'Consultar Contrato',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('asset/images/auto3.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('asset/images/auto1.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Consultar Rent-A-Car',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Center(
                  child: Text(
                    'Información Personal',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
              child: Text(
                'Cerrar Sesión',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
