import 'package:flutter/material.dart';
import 'package:flutter_big_shop/screens/GenreScreen.dart';
import 'package:flutter_big_shop/screens/HomeScreen.dart';
import 'package:flutter_big_shop/screens/BrandScreen.dart';
import 'package:flutter_big_shop/screens/song/SongScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: GenreScreen(title: 'Genre',)
      home: SongScreen(title: 'Song',)
    );
  }
}
