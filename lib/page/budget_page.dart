import 'package:coba_flutters/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:coba_flutters/main.dart';
import 'package:coba_flutters/page/form.dart';
import 'package:coba_flutters/model/budget_model.dart';

class MyBudgetData extends StatefulWidget {
  const MyBudgetData({super.key});

  @override
  State<MyBudgetData> createState() => _MyBudgetData();
}

class _MyBudgetData extends State<MyBudgetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),

      drawer: myDrawer(context),

      body: Center(
        child: Column(
          children: listData.isNotEmpty? listData.map((e) => Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child:SizedBox(
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          e.judul,
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        )
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(e.nominal.toString()),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(e.jenisBudget),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(e.tanggal),
                      ),
                    ],
                  )
                )
              )
            )
          )).toList():[const Text('Data kosong')],
        
        ),
      ),
    );
  }
}