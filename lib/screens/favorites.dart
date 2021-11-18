import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/widgets/search_bar.dart';

class FavoritesPage extends StatelessWidget {
   const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: AppColors.MAIN_COLOR,
                ),
                SizedBox(width: 10),
                Text(
                  'Favorites',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize:  25,
                    fontWeight: FontWeight.bold
                  )
                )
              ],
            ),
            Expanded(
              child: Container(),
            )
          ]
        )
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: AppColors.MAIN_COLOR,
                ),
                SizedBox(width: 10),
                Text(
                  'Favorites',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize:  25,
                    fontWeight: FontWeight.bold
                  )
                )
              ],
            ),
            Expanded(
              child: Container(),
            )
          ]
        )
    );
  }
}
