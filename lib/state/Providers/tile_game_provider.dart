import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tile_game/state/notifiers/tile_game_notifier.dart';
import 'package:tile_game/views/row_block_view.dart';

final tileGameProvideer =
    StateNotifierProvider<TileGameNotifier, List<RowBlockView>>(
  (_) => TileGameNotifier(),
);
