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
            Text(mywatchlistData.fields.title),
            Text(mywatchlistData.fields.releaseDate),
            Text(mywatchlistData.fields.watched),
            Text(mywatchlistData.fields.review),
            Text(mywatchlistData.fields.rating),
            ListTile(
              title: const Text('Back'),
              onTap: () {
                // Route kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}