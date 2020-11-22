import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_Item_widget.dart';
import 'package:whatsapp_clone/widgets/chat_bottom_widget.dart';
import 'package:whatsapp_clone/widgets/search_widget.dart';
import 'package:whatsapp_clone/widgets/user_list_widget.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  ScrollController _scrollController = new ScrollController();
  bool infoWindos = false;
  int selectedIndex = 0;
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
  void didUpdateWidget(covariant WebHomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromRGBO(7, 94, 84, 1.0),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey,
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color.fromRGBO(236, 229, 221, 1.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                                  height: 50.0,
                                  width: 50.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.message,
                                    color: Colors.grey,
                                    size: 18.0,
                                    semanticLabel: 'Message',
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  PopupMenuButton<String>(
                                    onSelected: (String result) {},
                                    itemBuilder: (BuildContext context) =>
                                        <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: '1',
                                        child: Text('Menu item 1'),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey[100],
                          height: 60,
                          child: SearchWidget(
                            onChanged: (txt) {
                              print(txt);
                            },
                          ),
                        ),
                        Expanded(
                          child: UserList(
                            onItemClick: (index) {
                              print(index);
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: infoWindos ? 2 : 3,
                  child: Container(
                    color: const Color.fromRGBO(236, 229, 221, 1.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                                      height: 50.0,
                                      width: 50.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Title"),
                                        Text("SubTitle")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 18.0,
                                    semanticLabel: 'Message',
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  PopupMenuButton<String>(
                                    onSelected: (String result) {
                                      setState(() {
                                        infoWindos = true;
                                      });
                                    },
                                    itemBuilder: (BuildContext context) =>
                                        <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: '1',
                                        child: Text('Menu item 1'),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: ListView.builder(
                              controller: _scrollController,
                              reverse: true,
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return ChatItemWidget(index, selectedIndex);
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
                ),
                infoWindos
                    ? Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                color: const Color.fromRGBO(236, 229, 221, 1.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                infoWindos = false;
                                              });
                                            },
                                            child: Icon(
                                              Icons.close,
                                              color: Colors.grey,
                                              size: 18.0,
                                              semanticLabel: 'Message',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25,
                                            height: 50,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('UserName'),
                                              Text('SubTitle')
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                                        height: 200.0,
                                        width: 200.0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [Text("Hello"), Text("Hello")],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
