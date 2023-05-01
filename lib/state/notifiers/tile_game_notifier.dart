import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tile_game/views/component/black_tile_view.dart';
import 'package:tile_game/views/component/blue_tile_view.dart';
import 'package:tile_game/views/row_block_view.dart';

class TileGameNotifier extends StateNotifier<List<RowBlockView>> {
  TileGameNotifier() : super(generateRowBlockViews());

  set setListState(List<RowBlockView> iterable) => state = iterable;
  get getIndexOfList => List.generate(state.length, (index) => index);
  void addToList() {
    final currentList = state.toList();
    currentList.add(
      RowBlockView(
        blackTile: BlackTileView(),
        blueTileView: BlueTileView(),
      ),
    );
    print(getIndexOfList.toString());
    state = currentList;
  }

  void removeFirstFromList() {
    if (state.length >= 6) {
      final currentList = state.toList();
      currentList.removeAt(0);
      state = currentList;
      print(getIndexOfList.toString());
    }
  }
}

List<RowBlockView> generateRowBlockViews() {
  return List.generate(
      5,
      (index) => RowBlockView(
            blackTile: BlackTileView(),
            blueTileView: BlueTileView(),
          ));
}
