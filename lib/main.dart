import 'package:expense_tracker/startScreen.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 44, 123, 171));
var kDarkcolorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(2255, 13, 20, 92),
);
void main() {
  runApp(
    MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkcolorScheme,
          cardTheme: CardTheme().copyWith(
            color: kDarkcolorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kDarkcolorScheme.primaryContainer,
                foregroundColor: kDarkcolorScheme.onPrimaryContainer),
          ),
        ),
        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: kColorScheme,
            appBarTheme: AppBarTheme().copyWith(
              foregroundColor: kColorScheme.onPrimaryContainer,
              backgroundColor: kColorScheme.primaryContainer,
            ),
            cardTheme: CardTheme().copyWith(
              color: kColorScheme.secondaryContainer,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 17,
                ))),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        home: const Startscreen()),
  );
}
