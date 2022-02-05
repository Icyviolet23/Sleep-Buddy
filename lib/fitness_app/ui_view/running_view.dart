import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';

class RunningView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const RunningView({Key? key, this.animationController, this.animation})
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
                                          "You're doing GREAT!",
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
                                      "You have slept on average 8 hours this week!",
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
                          child: Image.asset("assets/fitness_app/goodsleep.png"), //data:image/jpeg;base64,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
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
