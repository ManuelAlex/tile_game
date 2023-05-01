import 'package:flutter/material.dart';
import 'package:tile_game/views/component/black_tile_view.dart';
import 'package:tile_game/views/component/blue_tile_view.dart';
import 'package:uuid/uuid.dart';

class RowBlockView extends StatefulWidget {
  final BlackTileView blackTile;
  final BlueTileView blueTileView;
  final String uuid;

  RowBlockView({
    super.key,
    required this.blackTile,
    required this.blueTileView,
  }) : uuid = const Uuid().v4();

  @override
  State<RowBlockView> createState() => _RowBlockViewState();
}

class _RowBlockViewState extends State<RowBlockView> {
  var rowBlockList = <Widget>[
    BlueTileView(),
    BlueTileView(),
    BlueTileView(),
    BlackTileView(),
  ];
  @override
  void initState() {
    setState(() {
      rowBlockList.shuffle();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: rowBlockList,
      ),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RowBlockView &&
          widget.uuid == other.uuid &&
          widget.blackTile == other.blackTile &&
          widget.blueTileView == other.blueTileView;

  @override
  int get hashCode => Object.hashAll([
        widget.uuid,
        widget.blackTile,
        widget.blueTileView,
      ]);
}
