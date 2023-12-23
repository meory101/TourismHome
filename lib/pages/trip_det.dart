import 'package:flutter/material.dart';
import 'package:tourists/components/rectangular_button.dart';
import 'package:tourists/components/small_button.dart';
import 'package:tourists/theme/colors.dart';
import 'package:tourists/theme/fonts.dart';

class TripDet extends StatefulWidget {
  ImageProvider image;
  String name;
  int likes;

  TripDet({required this.image, required this.name, required this.likes});
  @override
  State<TripDet> createState() => _TripDetState();
}

class _TripDetState extends State<TripDet> {
  int selectedindex = 0;
  bool clickedlike = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 10, top: 10),
              height: MediaQuery.of(context).size.height /3,
              decoration: BoxDecoration(
                image: DecorationImage(image: widget.image, fit: BoxFit.cover),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    '${widget.likes} ',
                    style: MyFonts().subfont,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3 - 30),
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.name}',
                          style: MyFonts().bluemainfont,
                        ),
                        Text(
                          'Price 200 \$',
                          style: MyFonts().bluemainfont,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text('People', style: MyFonts().blueksubfont),
                        ),
                        Container(
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedindex = index;
                                  });
                                },
                                child: SmallButton(
                                  color: index == selectedindex
                                      ? MyColors().palemain
                                      : Colors.white,
                                  label: Text('${index + 1}',
                                      style: index == selectedindex
                                          ? MyFonts().mainfont
                                          : MyFonts().bluemainfont),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text('Description',
                              style: MyFonts().blueksubfont),
                        ),
                        Text(
                          'London is one of the world\'s most iconic cities, known for its rich history, stunning architecture, and vibrant culture. A trip to London is sure to be an unforgettable experience, filled with exciting activities and sights to see During your stay in London, you can explore famous landmarks such as Big Ben, the Tower of London, and Buckingham Palace. You can also take a stroll through Hyde Park or visit the British Museum to learn more about the city\'s fascinating history.',
                          style: MyFonts().greyfont,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              clickedlike = !clickedlike;

                              clickedlike
                                  ? widget.likes += 1
                                  : widget.likes -= 1;
                            });
                          },
                          child: SmallButton(
                            color: clickedlike
                                ? MyColors().palemain
                                : Colors.white,
                            label: Icon(
                              Icons.favorite,
                              color: clickedlike
                                  ? Colors.white
                                  : MyColors().palemain,
                            ),
                          ),
                        ),
                        RecButton(
                            color: MyColors().palemain,
                            label: Text(
                              'Buy now',
                              style: MyFonts().subfont,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
