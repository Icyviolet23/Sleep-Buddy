import 'package:flutter/material.dart';
import '../../main.dart';
import '../fitness_app_theme.dart';

class SETALARMView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const SETALARMView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FitnessAppTheme.beige,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: FitnessAppTheme.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                              width : 10
                                          ),

                                          Icon(
                                            Icons.hotel,
                                            color: HexColor("#000000"),
                                            size: 25,
                                          ),
                                          SizedBox(
                                              width : 5
                                          ),

                                          Text("00:00",
                                              style: TextStyle(
                                              fontFamily: FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                              color: FitnessAppTheme.nearlyBlack
                                                  .withOpacity(1.0)))
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          SizedBox(
                                              width : 10
                                          ),

                                          Icon(
                                            Icons.alarm_sharp,
                                            color: HexColor("#000000"),
                                            size: 25,
                                          ),
                                          SizedBox(
                                              width : 5
                                          ),

                                          Text(

                                              "08:00",
                                              style: TextStyle(
                                                  fontFamily: FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  letterSpacing: 0.0,
                                                  color: FitnessAppTheme.nearlyBlack
                                                      .withOpacity(1.0)))
                                        ],
                                      ),
                                  ],
                                ),
                                SizedBox(
                                  width : 10
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Tap to set your sleep cycle",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 0.0,
                                        color: FitnessAppTheme.nearlyDarkBlue
                                            .withOpacity(1.0))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
