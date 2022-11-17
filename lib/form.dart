import 'package:flutter/material.dart';
import 'package:coba_flutters/main.dart';
import 'package:coba_flutters/budget_data.dart';
import 'package:coba_flutters/model.dart';
import 'package:coba_flutters/drawer.dart';
import 'package:intl/intl.dart';



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

  TextEditingController choosenDate = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),

      drawer: myDrawer(context),

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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
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
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: choosenDate, //editing controller of this TextField
                    decoration: const InputDecoration( 
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                    ),
                    readOnly: true,  // when true user cannot edit text 
                    onTap: () async {
                      
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(), //get today's date
                          firstDate:DateTime.now(), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101),

                          
                      );

                      if(pickedDate != null ){
                          setState(() {
                            choosenDate.text = DateFormat('dd-MM-yyyy').format(pickedDate);
                          });
                      }else{
                          print("Date is not selected");
                      }
                            //when click we have to show the datepicker
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                          return 'Tanggal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
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
                        listData.add(Model(_judul, _nominal, _jenisBudget, choosenDate.text));
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