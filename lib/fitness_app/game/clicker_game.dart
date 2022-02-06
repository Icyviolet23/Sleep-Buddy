import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame/parallax.dart';

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
     ..x = 50
     ..sprite = await loadSprite('health_bar.png')
     ..size = Vector2(250, 90);
   add(health);

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