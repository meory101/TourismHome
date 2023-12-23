import 'package:flutter/material.dart';
import 'package:tourists/pages/trip_det.dart';
import 'package:tourists/theme/fonts.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<String> names = ["London UK", 'Newyork USA', 'Damascus syria'];
  List<int> likes = [1200, 500, 4000];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return TripDet(
                    image: AssetImage('assets/images/${index + 1}.jpg'),
                    name: '${names[index]}',
                    likes: likes[index],
                  );
                },
              ));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10, left: 10),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(right: 10),
              height: MediaQuery.of(context).size.height / 3,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/${index + 1}.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      '${names[index]}',
                      style: MyFonts().subfont,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Text(
                          '${likes[index]}',
                          style: MyFonts().subfont,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
