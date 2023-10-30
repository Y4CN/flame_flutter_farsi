import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: MyGame()));
}

class MyGame extends FlameGame {
  @override
  Color backgroundColor() {
    // return super.backgroundColor();
    return Colors.grey.shade300;
  }

  @override
  FutureOr<void> onLoad() {
    add(CircleComponent());
    return super.onLoad();
  }
}

class CircleComponent extends PositionComponent {
  @override
  void onMount() {
    super.onMount();
    position = Vector2(100, 100);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawCircle(Offset.zero, 10, Paint()..color = Colors.red);
  }
}
