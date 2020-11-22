import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_home_screen.dart';
import 'package:whatsapp_clone/screens/web_home_screen.dart';
import 'package:whatsapp_clone/widgets/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.black.withOpacity(0.5),
      ),
      home: Responsive(
        desktop: WebHomeScreen(),
        mobile: MobileHomeScreen(),
        tablet: WebHomeScreen(),
      ),
    );
  }
}
