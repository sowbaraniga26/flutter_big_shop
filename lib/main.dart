import 'package:flutter/material.dart';
import 'package:flutter_big_shop/screens/GenreScreen.dart';
import 'package:flutter_big_shop/screens/HomeScreen.dart';
import 'package:flutter_big_shop/screens/BrandScreen.dart';
import 'package:flutter_big_shop/screens/song/RegisterScreen.dart';
import 'package:flutter_big_shop/screens/song/SongScreen.dart';
import 'package:flutter_big_shop/services/Auth.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(const MyApp());

  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Auth()),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: GenreScreen(title: 'Genre',)
      // home: BrandScreen(title: 'Brand'),
      home: HomeScreen(title: 'home'),
      // home: SongScreen(title: 'Song',)
    );
  }
}
