import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/responsive/responsive_layout.dart';
import 'package:flutter_whatsapp/screens/mobile_screen_layout.dart';
import 'package:flutter_whatsapp/screens/web_screen_layout.dart';

import 'colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive WhatsApp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
