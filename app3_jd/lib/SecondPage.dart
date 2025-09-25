import 'package:app3_jd/main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  final int data;
  const SecondPage({Key? key, required this.data}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ("Esta es la segunda Pagina"),),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("bienvenido a la segunda pagina"),
            Text("El valor del contador es: $data"),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: Text("Ir a pagina principal"),
            ),
          ],
        )
      ),
    );
  }
}