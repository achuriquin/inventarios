import 'package:inventarios/application/use_cases/frmManTipoEmpleado.dart';
import 'package:flutter/material.dart';

class frmPrincipal extends StatefulWidget{
  State<frmPrincipal> createState()=>
  _frmPrincipal();
}

class _frmPrincipal extends State<frmPrincipal>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          title: Text('Principal'),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate([
            SingleChildScrollView(
                child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => frmManTipoEmpleado()));
                  },
                  child: Text('Mantenimiento tipo usuario'),
                ),
              ],
            )),
          ]),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisSpacing: 50,
              crossAxisSpacing: 300),
        ),
      ]),
    );
  }
}
