import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/movie.dart';
import 'login_screen.dart';
import 'search_page.dart';

import '../widget/top_rated_list_item.dart';
import '../widget/vertical_list_item.dart';
import '../widget/horizontal_list_item.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    body:
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (ctx, i) => HorizontalListItem(i),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Best of 2019',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlatButton(
                  child: Text('View All'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: bestMovieList.length,
              itemBuilder: (ctx, i) => VerticalListItem(i),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
