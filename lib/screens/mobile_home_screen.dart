import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_call_screen.dart';
import 'package:whatsapp_clone/screens/mobile_status_screen.dart';
import 'package:whatsapp_clone/widgets/user_list_widget.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _MobileHomeScreenState createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  Widget fabIcon = Icon(Icons.message);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4, initialIndex: 1)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icon(Icons.message);
              break;
            case 2:
              fabIcon = Icon(Icons.camera_enhance);
              break;
            case 3:
              fabIcon = Icon(Icons.call);
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              setState(() {});
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: '1',
                child: Text('Menu item 1'),
              ),
            ],
          )
        ],
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1.0),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
                child: Text(
              "STATUS",
            )),
            Tab(
                child: Text(
              "CALLS",
            )),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt),
          UserList(),
          MobileStatusScreen(),
          MobileCallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: fabIcon,
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1.0),
      ),
    );
  }
}
