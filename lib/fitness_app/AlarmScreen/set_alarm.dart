import 'package:flutter/material.dart';
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
                            color: FitnessAppTheme.white,
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
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                                child: SizedBox(
                                  height: 74,
                                  child: AspectRatio(
                                    aspectRatio: 1.714,
                                    child: Image.asset(
                                        "assets/fitness_app/back.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 16,
                                          top: 16,
                                        ),
                                        child: Text(
                                          "Set your alarm here",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily:
                                            FitnessAppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            color:
                                            FitnessAppTheme.nearlyDarkBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 12,
                                      top: 4,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Your last alarm was at 8am",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        color: FitnessAppTheme.grey
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: Image.asset("assets/fitness_app/alarm.png"), //data:image/png;base64,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
                        ),
                      )
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
