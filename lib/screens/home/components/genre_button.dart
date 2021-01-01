import 'package:flutter/material.dart';
import 'package:flutter_submission/constants.dart';

class MyGenreButtons extends StatefulWidget {
  const MyGenreButtons({
    Key key,
  }) : super(key: key);

  @override
  _MyGenreButtonsState createState() => _MyGenreButtonsState();
}

class _MyGenreButtonsState extends State<MyGenreButtons> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: index == selectedIndex ? Colors.red[400] : Colors.white,
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                genre[index],
                style: TextStyle(
                    color:
                        index == selectedIndex ? Colors.white : Colors.black54),
              ),
            ),
          );
        },
      ),
    );
  }
}
