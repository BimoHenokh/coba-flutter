import 'package:flutter/material.dart';

List<Model> listData = [];

class Model{
  String judul;
  int nominal;
  String jenisBudget;
  
  Model(this.judul, this.nominal, this.jenisBudget);
}