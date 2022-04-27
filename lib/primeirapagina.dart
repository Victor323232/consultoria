import 'package:consultoria/telaCliente.dart';
import 'package:consultoria/telaContato.dart';
import 'package:consultoria/telaEmpresa.dart';
import 'package:consultoria/telaServico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class primeirapagina extends StatefulWidget {
  const primeirapagina({Key? key}) : super(key: key);

  @override
  State<primeirapagina> createState() => _primeirapaginaState();
}

class _primeirapaginaState extends State<primeirapagina> {

  void _abrirEmpresa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> telaEmpresa()));
  }
  void _abrirServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> telaServico()));
  }
  void _abrirCliente(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> telaCliente()));
  }
  void _abrirContato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> telaContato()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultoria"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: EdgeInsets.all( 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top: 15),
             child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //separa com espaço
                children: <Widget>[
                  GestureDetector(
                    onTap:_abrirEmpresa ,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("images/menu_servico.png"),
                  ),
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 15),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap:_abrirCliente ,
                      child: Image.asset("images/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirContato,
                      child: Image.asset("images/menu_contato.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
