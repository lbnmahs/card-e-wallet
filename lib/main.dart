import 'package:card_manager/home.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() { runApp(const MyApp()); }

final colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.purple.shade400,
  background: Colors.blue,
);
final theme = ThemeData().copyWith(
  colorScheme: colorScheme,
  textTheme: GoogleFonts.montserratTextTheme(),
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      color: colorScheme.onBackground,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w700
    )
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards E-Wallet',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
  }
}

