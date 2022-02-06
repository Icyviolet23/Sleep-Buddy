import 'dart:ui';

import 'package:best_flutter_ui_templates/fitness_app/fitness_app_theme.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/rendering.dart';

class ClickerGame extends FlameGame{
  SpriteComponent boss = SpriteComponent();
  bool idle = true;
  int maxHealth = 100;
  int currHealth = 50;
  SpriteAnimationComponent bossAnim = SpriteAnimationComponent();

  @override
  Future<void> onLoad() async{
    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('s4m_ur4i-bg_clouds.png')
      ..size = size;

    add(background);
    
   SpriteComponent health = SpriteComponent()
     ..x = 25
     ..sprite = await loadSprite('health_bar.png')
     ..size = Vector2(250, 110);
   add(health);

   SpriteComponent goldImg = SpriteComponent()
    ..x = 250
     ..y = 40
    ..sprite = await loadSprite('dollar.png')
    ..size = Vector2(20, 20);
    add(goldImg);

    TextComponent gold = TextComponent()
      ..text = '18'
      ..size = Vector2(15, 15)
      ..textRenderer = TextPaint(
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: FitnessAppTheme.nearlyBlack,
          fontFamily: 'WorkSans'
        )
      )
      ..x = 274
      ..y = 38;
    add(gold);

    var bossSpriteSheet = await images.load('golem_sheet.png');
    final spriteSize = Vector2(400, 400);
    SpriteAnimationData spriteData = SpriteAnimationData.sequenced(amount: 4, stepTime: 0.3, textureSize: Vector2(100, 100));
    bossAnim = SpriteAnimationComponent.fromFrameData(bossSpriteSheet, spriteData)
      ..x = -23
      ..y = 20
      ..size = spriteSize;
    add(bossAnim);
  }


}