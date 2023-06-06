import 'package:flutter/material.dart';
import 'package:myenruter/scr/pages/contenido.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/kisaki.jpeg'),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            width: 160.0,
            height: 15.0,
            child: Divider(
              color: Colors.blueGrey[600],
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'USER-NAME',
              labelText: 'USER-NAME',
              suffixIcon: Icon(Icons.verified_user),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'EMAIL',
              labelText: 'EMAIL',
              suffixIcon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              suffixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contenido(),
                  ),
                );
              },
              child: Text('Iniciar Seccion'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}