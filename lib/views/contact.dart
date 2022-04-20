import 'package:flutter/material.dart';
import 'package:artikel_flutter/views/nav_drawer.dart';

class Contact extends StatelessWidget {
  static const String routeName = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact"),
        ),
        drawer: NavDrawer(),
        body: const Center(child: Text("This is contact page")));
  }
}