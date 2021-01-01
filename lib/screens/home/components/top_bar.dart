import 'package:flutter/material.dart';

class MyTopBar extends StatelessWidget {
  const MyTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          Text(
            "Indonesia",
            style: TextStyle(color: Colors.black54),
          ),
          Icon(
            Icons.search,
            color: Colors.red[400],
          )
        ],
      ),
    );
  }
}
