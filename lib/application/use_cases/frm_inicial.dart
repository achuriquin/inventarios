import 'package:flutter/material.dart';
import 'package:inventarios/application/use_cases/frm_registro.dart';
import 'package:inventarios/application/widgets/loguin_card.dart';

class frmInicial extends StatefulWidget{
  const frmInicial({Key? key}):super(key: key);

@override
State<frmInicial> createState() => _frmInicialState();
}

class _frmInicialState extends State<frmInicial>{
  int _seleccion = 0;
  static const List<Widget> _widgetOptions =<Widget>[
    LoginPage(),

  ];
  void _itemSelecionado(int index){
    setState(() {
      _seleccion=index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_seleccion),
      ),
      
    );
  }
}