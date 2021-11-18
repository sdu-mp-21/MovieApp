import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:args/args.dart';
import 'package:crypto/crypto.dart';

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
