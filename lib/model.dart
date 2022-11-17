import 'package:flutter/material.dart';

List<Model> listData = [];

class Model{
  String judul;
  int nominal;
  String jenisBudget;
  String tanggal;
  
  Model(this.judul, this.nominal, this.jenisBudget, this.tanggal);
}