import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/artikel_detail_screen.dart';
import '../models/artikel.dart';

class ArtikelItem extends StatelessWidget {
  const ArtikelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Artikel>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ArtikelDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          leading: Consumer<Artikel>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                product.toggleFavoriteStatus();
              },
            ),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.left,
          ),
          subtitle: Text(
            product.date,
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}
