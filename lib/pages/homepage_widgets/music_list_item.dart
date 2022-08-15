import 'package:flutter/material.dart';
import 'package:flutter_musicdj/model/instruments_model.dart';

import 'music_block.dart';

class MusicListItem extends StatelessWidget {
  final Instruments instruments;
  final int index;
  const MusicListItem(
      {Key? key, required this.instruments, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            height: 80,
            width: 80,
            child: Text('$index')),
        MusicBlock(
          text: instruments.drums,
          type: 0,
        ),
        MusicBlock(
          text: instruments.guitar,
          type: 1,
        ),
        MusicBlock(
          text: instruments.piano,
          type: 2,
        ),
        MusicBlock(
          text: instruments.trumpt,
          type: 3,
        ),
      ],
    );
  }
}
