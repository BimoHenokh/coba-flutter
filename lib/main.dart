import 'package:coba_flutters/model.dart';
import 'package:flutter/material.dart';
import 'package:coba_flutters/form.dart';
import 'package:coba_flutters/budget_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

    final String title = 'Flutter Lab Home Page';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decreamentCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  String showGanjilGenap() {
    if (_counter % 2 == 0) {
      return "Genap";
    } else {
      return "Ganjil";
    }
  }

  Color changeGanjilGenapColor() {
    if (_counter % 2 == 0) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    // listData.add(Model("andi", 110100, "Pemasukkan"));
    // listData.add(Model("bagas", 235235, "Pengeluaran"));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              showGanjilGenap(),
              style: TextStyle(
                color: changeGanjilGenapColor(),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: <Widget>[
            Visibility(
              visible: _counter > 0,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    onPressed: _decreamentCounter,
                    tooltip: 'Decreament',
                    child: const Icon(Icons.remove),
                  ),
                )
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
