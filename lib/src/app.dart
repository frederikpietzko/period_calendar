import 'package:flutter/material.dart';

import './screens/main.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Periodenkalender",
      locale: Locale('de_DE'),
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.pink[400],
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              letterSpacing: 5,
              fontSize: 30,
            ),
          ),
        ),
      ),
      home: Main(),
    );
  }
}
