import 'package:flutter/material.dart';

class ChatItemWidget extends StatefulWidget {
  final int index;
  final int selectedIndex;
  ChatItemWidget(this.index, this.selectedIndex);

  @override
  _ChatItemWidgetState createState() => _ChatItemWidgetState();
}

class _ChatItemWidgetState extends State<ChatItemWidget> {
  @override
  void didUpdateWidget(covariant ChatItemWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (widget.index % 2 == 0) {
      //This is the sent message. We'll later use data from firebase instead of index to determine the message is sent or received.
      return Container(
          child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              child: Text(
                'This is a sent message sdfsdfsdfsdfsdfdsfsdf',
                style: TextStyle(color: Colors.black),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0)),
              margin: EdgeInsets.only(right: 10.0),
            )
          ],
          mainAxisAlignment:
              MainAxisAlignment.end, // aligns the chatitem to right end
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            child: Text(
              'dd MMM kk:mm',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontStyle: FontStyle.normal),
            ),
          )
        ])
      ]));
    } else {
      // This is a received message
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: Colors.black),
                  ),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(left: 10.0),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              child: Text(
                'dd MMM kk:mm',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal),
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10.0),
      );
    }
  }
}
