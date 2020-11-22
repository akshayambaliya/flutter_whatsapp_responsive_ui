import 'package:flutter/material.dart';

class MobileStatusScreen extends StatefulWidget {
  const MobileStatusScreen({
    Key key,
  }) : super(key: key);

  @override
  _MobileStatusScreenState createState() => _MobileStatusScreenState();
}

class _MobileStatusScreenState extends State<MobileStatusScreen> {
  int _selectedIndex = 0;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Status"),
      )
    );
  }
}
