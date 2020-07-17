import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto=new TextStyle(fontSize: 28);

  final conteo=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Nuevo de clicks:',style: estiloTexto),
          Text('$conteo',style:estiloTexto)
        ],),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.green.shade600,
        child: Icon(Icons.add,size: 30),
        onPressed: (){
          print('hola Mundo!');
          
        },
        ),
    );
  }
}