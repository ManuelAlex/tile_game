import 'package:flutter/material.dart';
import 'package:tile_game/state/Providers/tile_game_provider.dart';
import 'package:tile_game/state/model/tile_model.dart';
import 'package:tile_game/views/component/tile_view.dart';

class BlackTileView extends TileView {
  BlackTileView({
    super.key,
  }) : super(
          tileModel: TileModel(
            onPressed: (ref) {
              ref.read(tileGameProvideer.notifier).addToList();
            },
            color: Colors.black,
          ),
        );
}
