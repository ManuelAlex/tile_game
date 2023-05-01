import 'package:flutter/material.dart';
import 'package:tile_game/state/Providers/tile_game_provider.dart';
import 'package:tile_game/state/model/tile_model.dart';
import 'package:tile_game/views/component/tile_view.dart';

class BlueTileView extends TileView {
  BlueTileView({
    super.key,
  }) : super(
          tileModel: TileModel(
            onPressed: (ref) {
              ref
                  .read(
                    tileGameProvideer.notifier,
                  )
                  .removeFirstFromList();
            },
            color: Colors.blue,
          ),
        );
}
