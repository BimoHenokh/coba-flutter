import 'package:flutter/material.dart';
import 'package:coba_flutters/main.dart';
import 'package:coba_flutters/page/form.dart';
import 'package:coba_flutters/page/budget_page.dart';
import 'package:coba_flutters/page/mywatchlist_page.dart';

Widget myDrawer (context){
  return Drawer(
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
                // Route menu ke halaman budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyBudgetData()),
                );
              },
            ),

            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Route menu ke halaman mywatchlist
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MywatchlistPage()),
                );
              },
            ),

          ],
        ),
      );
}