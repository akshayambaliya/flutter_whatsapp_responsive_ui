import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final Function onChanged;
  const SearchWidget({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 18.0,
                semanticLabel: 'Message',
              ),
              Expanded(
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  onChanged: onChanged,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15, bottom: 10),
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
    );
  }
}
