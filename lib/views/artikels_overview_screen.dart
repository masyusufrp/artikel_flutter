import 'package:flutter/material.dart';

import '../controllers/artikels_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ArtikelsOverviewScreen extends StatefulWidget {
  const ArtikelsOverviewScreen({Key? key}) : super(key: key);

  @override
  _ArtikelsOverviewScreenState createState() => _ArtikelsOverviewScreenState();
}

class _ArtikelsOverviewScreenState extends State<ArtikelsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artikels Today'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.Favorites,
              ),
              const PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: ArtikelsGrid(showFavs: _showOnlyFavorites),
    );
  }
}
