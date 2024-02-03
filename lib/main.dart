import 'package:card_manager/home.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() { runApp(const MyApp()); }

final colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.purpleAccent,
  background: Colors.purple.shade100
);
final theme = ThemeData().copyWith(
  colorScheme: colorScheme,
  textTheme: GoogleFonts.montserratTextTheme(),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: colorScheme.onBackground,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w700
    )
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Cards',
      theme: theme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

