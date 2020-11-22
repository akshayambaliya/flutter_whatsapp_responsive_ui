import 'package:flutter/material.dart';

class ChatBottomView extends StatelessWidget {
  const ChatBottomView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.emoji_emotions,
            size: 24,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.attach_file,
            size: 24,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                color: Colors.grey[100],
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  hintText: 'Enter search team'),
                            ),
                          )
//                                  TextField(
//                                    decoration: InputDecoration(
//                                        border: InputBorder.none,
//                                        hintText: 'Enter a search term'
//                                    ),
//                                  ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Icon(
            Icons.mic_none_rounded,
            size: 24,
          ),
        ],
      ),
    );
  }
}
