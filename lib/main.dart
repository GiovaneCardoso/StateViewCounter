import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: statefulHome(),
    );
  }
}
class statefulHome extends StatefulWidget {
  const statefulHome({Key? key}) : super(key: key);

  @override
  _statefulHomeState createState() => _statefulHomeState();
}

class _statefulHomeState extends State<statefulHome> {
  @override
  int contador = 0;
  void incrementCounter() {
    setState(() {
      contador++;
    });
  }
  void zerarContador() {
    setState((){
      contador = 0;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Contador de cliques")
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Hello Giovane", style: TextStyle(
                    fontSize: 22,
                    color: Colors.red,
                    fontStyle: FontStyle.italic
                ),
                ),
                Text("Você clicou $contador vezes", style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  ),
                ),
                TextButton(
                  child: Text("Zerar contador"),
                  onPressed: (){
                    zerarContador();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  )
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
            child: ListView(
              children: [
                ListTile(
                    title: Text("Item 1")
                ),
                ListTile(
                    title: Text("Item 2")
                ),
                ListTile(
                    title: Text("Item 3")
                )
              ],
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: (){
          print("Clicado $contador ");
          incrementCounter();
        },
      ),
    );
  }
}
