import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tile_game/state/model/tile_model.dart';

class TileView extends ConsumerWidget {
  final TileModel tileModel;
  const TileView({
    super.key,
    required this.tileModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tileModel.onPressed(ref);
        },
        child: Container(
          color: tileModel.color,
        ),
      ),
    );
  }
}
