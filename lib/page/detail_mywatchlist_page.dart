import 'package:coba_flutters/model/mywatchlist_model.dart';
import 'package:flutter/material.dart';
import 'package:coba_flutters/page/drawer.dart';

class MywatchlistDetail extends StatelessWidget {
  // In the constructor, require a Todo.
  const MywatchlistDetail({super.key, required this.mywatchlistData});

  // Declare a field that holds the Todo.
  final MywatchlistData mywatchlistData;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: myDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              '${mywatchlistData.fields.title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                ),
            ),

            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  "Realese Date: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  '${mywatchlistData.fields.releaseDate}'
                  ),
                ),
              ],
            ),
            
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  "Watched: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('${mywatchlistData.fields.watched}'),
              ],
            ),

            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  "Rating: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('${mywatchlistData.fields.rating}'),
              ],
            ),

            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  "Review: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '${mywatchlistData.fields.review}'
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListTile(
            title: Text(
              'Back', 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                ),
              ),
            onTap: () {
              // Route kembali ke halaman sebelumnya
              Navigator.pop(context);
            },
            tileColor: Colors.blue,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}