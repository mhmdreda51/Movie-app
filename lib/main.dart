import 'package:flutter/material.dart';
import 'package:movies/ui/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
