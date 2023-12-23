import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tourists/components/discover.dart';
import 'package:tourists/components/popular_trips.dart';
import 'package:tourists/components/profile_tag.dart';
import 'package:tourists/components/search.dart';
import 'package:tourists/theme/fonts.dart';
import 'package:tourists/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            currentIndex: index,
            selectedItemColor: MyColors().maincolor,
            unselectedLabelStyle: MyFonts().greyfont,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ]),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: ProfileTag(
                          image: AssetImage("assets/images/4.jpg"),
                          radius: 30,
                          name: Text(
                            'Bella Mallope',
                            style: MyFonts().bluemainfont,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25,right: 10),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/list.png'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
                Search(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Discover',
                    style: MyFonts().bluemainfont,
                  ),
                ),
                Container(
                  child: Text(
                    'Find the best trip and discover the world!',
                    style: MyFonts().greyfont,
                  ),
                ),
                Discover(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Popular',
                    style: MyFonts().bluemainfont,
                  ),
                ),
                Container(
                  child: Text(
                    'Here are the most popular trips!',
                    style: MyFonts().greyfont,
                  ),
                ),
                PopularTrips()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
