import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/fitness_app/fitness_app_theme.dart';

class FirstFeedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 13),
                    child: Text(
                      'Tom Zajdel',
                      style: TextStyle(
                        fontFamily: FitnessAppTheme.fontName,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.2,
                        color: FitnessAppTheme.nearlyBlack,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 13),
                    child: Text(
                      'shared a post by',
                      style: TextStyle(
                        fontFamily: FitnessAppTheme.fontName,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        letterSpacing: -0.2,
                        color: FitnessAppTheme.darkerText,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: FitnessAppTheme.fontName,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        letterSpacing: -0.2,
                        color: FitnessAppTheme.darkerText,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Tjun Jet Ong',
                        style: TextStyle(
                        fontFamily: FitnessAppTheme.fontName,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        letterSpacing: -0.2,
                        color: FitnessAppTheme.darkerText,
                      ),
                      ),
                  ),

                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Image.network(
                'https://static.thenounproject.com/png/658625-200.png',
                height: 30,
              ),
            ),
          ],
        ),
        Container(
          height: 300,
          child: Stack(
            children: [
              Padding(
                  padding:
                  const EdgeInsets.only(top: 48.0, left: 18, right: 18),
                  child: Material(
                    borderRadius: BorderRadius.circular(18.0),
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.network(
                          'https://images.pexels.com/photos/4207548/pexels-photo-4207548.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, top: 18),
                child: Material(
                  elevation: 7,
                  borderRadius: BorderRadius.circular(140),
                  child: Container(
                      height: 64,
                      width: 64,
                      margin: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius: BorderRadius.circular(140)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.readersdigest.ca/wp-content/uploads/2017/08/being-a-good-person.jpg',
                        ),
                      )),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 0.0),
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(6),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 140,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20, left: 20),
                                  child: Text(
                                    'Tjun Jet Ong',
                                    style: TextStyle(
                                      fontFamily: FitnessAppTheme.fontName,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                      letterSpacing: -0.2,
                                      color: FitnessAppTheme.darkerText,
                                    ),
                                  )),
                              Padding(
                                  padding:
                                  const EdgeInsets.only(top: 20, left: 20, right:20),
                                  child: Text(
                                    'I cleared my sleep debt of 10 hours this week!',
                                    style: TextStyle(
                                      fontFamily: FitnessAppTheme.fontName,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                      letterSpacing: -0.2,
                                      color: FitnessAppTheme.darkerText,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 153,
                    right: 35, //give the values according to your requirement
                    child: Material(
                        color: Colors.orange,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}