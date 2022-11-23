import 'package:coba_flutters/model/mywatchlist_model.dart';
import 'package:coba_flutters/page/drawer.dart';
import 'package:coba_flutters/model/budget_model.dart';
import 'package:coba_flutters/page/detail_mywatchlist_page.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MywatchlistPage extends StatefulWidget {
    const MywatchlistPage({Key? key}) : super(key: key);

    @override
    _MywatchlistPageState createState() => _MywatchlistPageState();
}

class _MywatchlistPageState extends State<MywatchlistPage> {
    Future<List<MywatchlistData>> fetchMywatchlistData() async {
        var url = Uri.parse('https://tugas2-bimo-h.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
          url,
          headers: {
              "Access-Control-Allow-Origin": "*",
              "Content-Type": "application/json",
          },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object MywatchlistData
        List<MywatchlistData> listMywatchlistData = [];
        for (var d in data) {
          if (d != null) {
              listMywatchlistData.add(MywatchlistData.fromJson(d));
          }
        }

        return listMywatchlistData;
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Watchlist'),
        ),
        drawer: myDrawer(context),
        body: FutureBuilder(
          future: fetchMywatchlistData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                      Text(
                      "Tidak ada mywatchlist :(",
                      style: TextStyle(
                          color: Color(0xff59A5D8),
                          fontSize: 20),
                      ),
                      SizedBox(height: 8),
                  ],
                );
                
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        "${snapshot.data![index].fields.title}"
                      ),
                      onTap: () {
                        Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context)=> MywatchlistDetail(
                              mywatchlistData: snapshot.data![index],
                            ),
                          )
                        );
                      } 
                    );
                  }      

                );
              }
            }
          },
        ),
      );
    }
    
}

//https://docs.flutter.dev/cookbook/navigation/passing-data