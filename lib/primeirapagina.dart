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
                    child: Image.asset("images/detalhe_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("images/detalhe_servico.png"),
                  ),
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 15),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap:_abrirEmpresa ,
                      child: Image.asset("images/detalhe_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/detalhe_contato.png"),
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
