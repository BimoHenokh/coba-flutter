import 'package:flutter/material.dart';
import 'package:coba_flutters/main.dart';
import 'package:coba_flutters/budget_data.dart';
import 'package:coba_flutters/model.dart';


class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _judul = "";
  int _nominal = 0;
  
  String _jenisBudget = "Pemasukan";
  List<String> listJenisBudget = ["Pemasukan", "Pengeluaran"];

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

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Input judul
                Padding(
                      // Menggunakan padding sebesar 8 pixels
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Contoh: Beli sate",
                          labelText: "Judul",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.title),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Keyboard type agar hanya menerima angka
                        keyboardType: TextInputType.number,
                        // Menambahkan behavior saat nama diketik 
                        onChanged: (String? value) {
                          setState(() {
                              _judul = value!;
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                              _judul = value!;
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                              return 'Judul tidak boleh kosong!';
                          }
                          return null;
                        },
                      ),
                    ),
                // Input nominal
                Padding(
                      // Menggunakan padding sebesar 8 pixels
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "1000",
                          labelText: "Nominal",
                          // Menambahkan icon agar lebih intuitif
                          icon: const Icon(Icons.money),
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        // Keyboard type agar hanya menerima angka
                        keyboardType: TextInputType.number,
                        // Menambahkan behavior saat nama diketik 
                        onChanged: (String? value) {
                          setState(() {
                              _nominal = int.parse(value!);
                          });
                        },
                        // Menambahkan behavior saat data disimpan
                        onSaved: (String? value) {
                          setState(() {
                              _nominal = int.parse(value!); ;
                          });
                        },
                        // Validator sebagai validasi form
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                              return 'Nominal tidak boleh kosong!';
                          }
                          if (double.tryParse(value) == null){
                            return 'Nominal harus berupa angka!';
                          }
                          return null;
                        },
                      ),
                    ),

                DropdownButton(
                  value: _jenisBudget,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: listJenisBudget.map((String items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                        _jenisBudget = newValue!;
                    });
                  },
                ),


                TextButton(
                  child: const Text(
                      "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState((){
                        listData.add(Model(_judul, _nominal, _jenisBudget));
                      });
                    }
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}