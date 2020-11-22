import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone/widgets/responsive.dart';

class UserList extends StatelessWidget {
  final Function onItemClick;
  const UserList({
    Key key,
    this.onItemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (Responsive.isMobile(context)) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChatScreen(); // passing data to chat room
                  }));
                } else {
                  onItemClick(index);
                }
              },
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text('User Title ${index}'),
              subtitle: Text('User SubTitle ${index}'),
              hoverColor: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
