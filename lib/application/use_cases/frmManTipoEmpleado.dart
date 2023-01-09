import 'package:inventarios/infrastructure/entity_manager/entipo_empleados.dart';
import 'package:flutter/material.dart';
class frmManTipoEmpleado extends StatefulWidget{
  State<frmManTipoEmpleado> createState() => _frmManTipoEmpleado();
}
final txtcodTU = TextEditingController();
final txtnomTU = TextEditingController();

class _frmManTipoEmpleado extends State<frmManTipoEmpleado>{
  @override
  entipo_empleados cn = entipo_empleados();
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Mantenimiento de tipo de usuarios"),
      ),
      body: Column(
        children: [
          TextField(controller: txtcodTU,),
          TextField(controller: txtnomTU,),
          ElevatedButton(
            onPressed: () =>cn.insertE(txtcodTU.text, txtnomTU.text), 
            child: const Text("Insertar"),
            ),
           ElevatedButton(
              onPressed: () =>cn.updateE(txtcodTU.text, txtnomTU.text),
              child: const Text("Modificar"),
              ),
            ElevatedButton(
              onPressed: () =>cn.deleteE(txtcodTU.text), 
              child: const Text("Elimina"),
              ),
              ElevatedButton(
                onPressed: () =>cn.selectE(), 
                child: const Text("Listar"),
                ),
        ],
      ),
    );
  }
}
