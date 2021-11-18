import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: HomePage(),
  )));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: buildList(context),
    );
  }

  List<ListTile> buildList(BuildContext context) {
    return data
        .map((HoursData f) => ListTile(
              title: Text(f.name),
              subtitle: Text('Category: ${f.catergory}'),
              leading: Icon(f.iconData),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    if (f.favorite) {
                      favoriteData.remove(f);
                      f.favorite = false;

                      // Результат favoriteData
                      print('-----------');
                      favoriteData.forEach((element) => print(element.name));
                      print('-----------');
                    } else {
                      favoriteData.add(f);
                      f.favorite = true;

                      // Результат favoriteData
                      print('-----------');
                      favoriteData.forEach((element) => print(element.name));
                      print('-----------');
                    }
                  });
                },
                child: Container(
                  child: Icon(
                    Icons.favorite_border,
                    color: (f.favorite) ? Colors.red : Colors.grey,
                  ),
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed(f.rt),
            ))
        .toList();
  }
}

class HoursData {
  String name;
  String catergory;
  IconData iconData;
  String rt;
  bool favorite;

  HoursData({this.name, this.catergory, this.iconData, this.rt, this.favorite});
}

List<HoursData> data = [
  HoursData(
    name: 'Programming',
    catergory: 'Technology',
    iconData: Icons.computer,
    rt: '/programming',
    favorite: false,
  ),
  HoursData(
    name: 'Run',
    catergory: 'Sport',
    iconData: Icons.directions_run,
    rt: '/run',
    favorite: false,
  ),
  HoursData(
    name: 'Bike',
    catergory: 'Sport',
    iconData: Icons.directions_bike,
    rt: '/bike',
    favorite: false,
  ),
];

List<HoursData> favoriteData = new List<HoursData>();
