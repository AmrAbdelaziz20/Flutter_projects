import 'package:flutter/material.dart';
import 'package:phone_market/constants.dart';
import 'package:phone_market/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          // You can customize text styles here
          // For example:
          // ignore: deprecated_member_use
          headline6: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          // ignore: deprecated_member_use
          bodyText2: TextStyle(fontSize: 16.0),
        ),
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // Arabic RTL
      supportedLocales: [const Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      home: const HomeScreen(),
    );
  }
}
