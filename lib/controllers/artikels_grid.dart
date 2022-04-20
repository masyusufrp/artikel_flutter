import 'package:artikel_flutter/controllers/artikel_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/artikels.dart';
import 'artikel_item.dart';

class ArtikelsGrid extends StatelessWidget {
  final bool showFavs;

  const ArtikelsGrid({
    Key? key,
    required this.showFavs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Artikels>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: products[i],
        child: const ArtikelItem(
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1 / 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
