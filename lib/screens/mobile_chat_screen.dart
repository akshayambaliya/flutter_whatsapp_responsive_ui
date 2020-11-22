import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_Item_widget.dart';
import 'package:whatsapp_clone/widgets/chat_bottom_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key key,
  }) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<ChatScreen> {
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1.0),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              // <-- avatar here instead
              radius: 20,
              child: Icon(Icons.verified_user),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text("UserName"),
          ],
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
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  controller: _scrollController,
                  reverse: true,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ChatItemWidget(index, 0);
                  },
                ),
              ),
            ),
            Container(
              color: Colors.grey[100],
              child: ChatBottomView(),
            )
          ],
        ),
      ),
    );
  }
}
