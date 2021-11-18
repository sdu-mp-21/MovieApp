import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_movie_app/screens/details_screen.dart';
import 'package:flutter_movie_app/widgets/category_card.dart';
import 'package:flutter_movie_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 5),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("../../assets/icons/menu.svg"),
                    ),
                  ),
                  Text("Good Morning, \nNurmukhamed",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900)),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Favorites",
                          svgSrc: "../../assets/icons/favorite.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "My Lists",
                          svgSrc: "../../assets/icons/list.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Watch Lists",
                          svgSrc: "../../assets/icons/watch_list.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Cast Lists",
                          svgSrc: "../../assets/icons/cast_list.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
