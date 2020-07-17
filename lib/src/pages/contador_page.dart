import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState(){
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto=new TextStyle(fontSize: 28);

  int _conteo=0;

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
          Text('Numero de taps:',style: _estiloTexto),
          Text('$_conteo',style:_estiloTexto)
        ],),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 1,),
    FloatingActionButton(onPressed: _reset,
      child: Icon(Icons.exposure_zero),),
      Expanded(child: SizedBox()),
    FloatingActionButton(onPressed: _agregar ,
      child: Icon(Icons.add),),
      SizedBox(width: 15,),
      FloatingActionButton(onPressed:_sustraer,
      child: Icon(Icons.remove),),
    ],);
  }

  void _agregar(){
    setState(() {
    _conteo++;
      
    });
  }

  void _sustraer(){
    setState(() {
      _conteo--;
    });
  }

  void _reset(){
    setState(() {
      _conteo=0;
    });
  }

}