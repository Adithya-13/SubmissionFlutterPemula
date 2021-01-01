import 'package:flutter/material.dart';
import 'package:flutter_submission/constants.dart';
import 'package:flutter_submission/screens/detail/detail_screen.dart';
import 'package:flutter_submission/screens/home/components/genre_button.dart';
import 'package:flutter_submission/screens/home/components/top_bar.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              MyTopBar(),
              MyGenreButtons(),
              Expanded(
                child: MyViewPager(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyViewPager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        layout: SwiperLayout.CUSTOM,
        customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
            .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
          Offset(-370.0, -40.0),
          Offset(0.0, 0.0),
          Offset(370.0, -40.0)
        ]),
        itemWidth: MediaQuery.of(context).size.width * 0.7,
        itemHeight: MediaQuery.of(context).size.height * 0.7,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Hero(
                  tag: movies[index].title,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/${movies[index].poster}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Text(
                        movies[index].title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(
                            width: 5,
                          ),
                          Text(movies[index].rate),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: movies.length,
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                movie: movies[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
