import 'package:flutter/material.dart';
import 'package:coba_flutters/main.dart';
import 'package:coba_flutters/form.dart';
import 'package:coba_flutters/model.dart';

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
        title: Text('Form'),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Form'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),

            ListTile(
              title: const Text('Data budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetData()),
                );
              },
            ),

          ],
        ),
      ),

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
                          style: TextStyle(
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
                    ],
                  )
                )
              )
            )
          )).toList():[Text('Data kosong')],
        
        ),
      ),
    );
  }
}