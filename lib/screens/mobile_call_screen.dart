import 'package:flutter/material.dart';

class MobileCallScreen extends StatefulWidget {
  const MobileCallScreen({
    Key key,
  }) : super(key: key);

  @override
  _MobileCallScreenState createState() => _MobileCallScreenState();
}

class _MobileCallScreenState extends State<MobileCallScreen> {
  int _selectedIndex = 0;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Text("Call"),
        ));
  }
}
