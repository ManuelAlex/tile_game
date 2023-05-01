import 'package:flutter/material.dart' show Color, immutable, Colors;
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef GameFunction = void Function(WidgetRef ref);

@immutable
class TileModel {
  final Color color;
  final GameFunction onPressed;
  const TileModel({
    required this.onPressed,
    this.color = Colors.black,
  });
}
