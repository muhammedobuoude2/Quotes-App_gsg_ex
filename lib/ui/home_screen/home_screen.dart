import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/helpers/shared_pref.dart';
import 'package:quotes_app/provider/quotes_provider.dart';
import 'package:quotes_app/ui/favorite_page/favorite_page.dart';
import 'package:quotes_app/ui/home_page/home_page.dart';
import 'package:quotes_app/widget/drawer.dart';
import 'package:quotes_app/ui/star_page/star_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [
    HomePage(),
    FavoritePage(),
    StarPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savedata();
  }

  void savedata() async {
    SharedHelper.sharedHelper.saveDate(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3797A4),
        title: Text("رسائلي"),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: screens.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapedIndex) {
          this.index = tapedIndex;
          setState(() {});
        },
        selectedItemColor: Color(0xff3797A4),
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rating',
          ),
        ],
      ),
    );
  }
}
