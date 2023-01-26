import 'package:flutter/material.dart';
import 'package:movie_info_app/presentation/resource/theme.dart';
import 'package:movie_info_app/presentation/view/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moive',
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
