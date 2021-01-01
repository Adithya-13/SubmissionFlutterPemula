import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/model/movie.dart';

class TitleDetail extends StatefulWidget {
  final Movie movie;

  const TitleDetail({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  _TitleDetailState createState() => _TitleDetailState();
}

class _TitleDetailState extends State<TitleDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      AutoSizeText(
                        widget.movie.title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        minFontSize: 16,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(widget.movie.duration),
                          SizedBox(width: 20),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 5,
                          ),
                          Text(widget.movie.rate),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red[400],
                      ),
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        isFavorite
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 50,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: widget.movie.genre.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      widget.movie.genre[index],
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
