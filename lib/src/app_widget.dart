import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color(0xff075e54),
          indicatorColor: Colors.white,
          primaryColorDark: const Color(0xFF128C7E),
          primaryIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          // ignore: prefer_const_constructors
          appBarTheme: AppBarTheme(
            backgroundColor: const Color(0xff075e54),
          )),
      home: const HomePage(title: 'WhatsApp'),
    );
  }
}
