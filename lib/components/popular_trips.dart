import 'package:flutter/material.dart';
import 'package:tourists/components/trip_list_tile.dart';
import 'package:tourists/theme/fonts.dart';

class PopularTrips extends StatefulWidget {
  @override
  State<PopularTrips> createState() => _PopularTripsState();
}

class _PopularTripsState extends State<PopularTrips> {
  List<Map> trips = [
    {
      'title': 'London Trip',
      'content':
          'London is a vibrant city with rich history, stunning architecture, famous landmarks and great shopping.'
    },
    {'title': 'NewYork Trip', 'content': "NYC: City that never sleeps."},
    {
      'title': 'Damascus Trip',
      'content':
          "Damascus, Syria's ancient capital, rich in culture and history."
    },
  ];
  @override
  void initState() {
    print(
      '${trips[0]['title']}',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return TripListTile(
            image: AssetImage('assets/images/${index + 1}.jpg'),
            title: Text(
              '${trips[index]['title']}',
              style: MyFonts().blueksubfont,
            ),
            content: Text(
              '${trips[index]['content']}',
              style: MyFonts().greyfont,
            ),
          );
        },
      ),
    );
  }
}
