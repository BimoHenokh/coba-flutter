import 'package:flutter/material.dart';

List<BudgetModel> listData = [];

class BudgetModel{
  String judul;
  int nominal;
  String jenisBudget;
  String tanggal;
  
  BudgetModel(this.judul, this.nominal, this.jenisBudget, this.tanggal);
}