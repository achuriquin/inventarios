import 'dart:convert';

import 'package:sql_conn/sql_conn.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
var db =  openDatabase('DBinventarios.dbo');
class conexion {
  Future<void> connect() async {
    debugPrint("Connecting...");
    try {
      debugPrint("LOADING");
      await SqlConn.connect(
          ip: "192.168.0.113",
          port: "1433",
          databaseName: "DBinventarios",
          username: "sa",
          password: "12345");
      debugPrint("Conectado!");
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      debugPrint('');
    }
  }

  conexion() {
    connect();
  }
  Future<void> read(String qery,List<dynamic> lister) async {
    var res = await SqlConn.readData(qery); 
        lister=jsonDecode(res);
    debugPrint(res.toString());
    
  }

  Future<void> write(String qery) async {
    var res = await SqlConn.writeData(qery);
    debugPrint(res.toString());
  }

 // Future<List<Map<String, dynamic>>>

}
