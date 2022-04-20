import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikel_flutter/controllers/artikels_grid.dart';
import 'package:artikel_flutter/views/nav_drawer.dart';

import 'models/artikel.dart';
import 'models/artikels.dart';
import 'views/artikels_overview_screen.dart';
import 'views/artikel_detail_screen.dart';
import 'models/artikels.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Artikels(),
        ),
      ],
      child: const ArtikelApp(),
    ),
  );
}

class ArtikelApp extends StatelessWidget {
  const ArtikelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artikel Today',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.deepOrange,
      ),
      home: const ArtikelsOverviewScreen(),
      routes: {
        ArtikelDetailScreen.routeName: (ctx) => const ArtikelDetailScreen(),
        //CartScreen.routeName: (ctx) => CartScreen(),
      },
    );

  }
}
