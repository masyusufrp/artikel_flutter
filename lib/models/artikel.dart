import 'package:flutter/foundation.dart';

class Artikel with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String date;
  final String imageUrl;
  bool isFavorite;

  Artikel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
