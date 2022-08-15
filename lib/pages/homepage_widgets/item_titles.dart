import 'package:flutter/material.dart';

import 'music_block.dart';

class ItemTitles extends StatelessWidget {
  const ItemTitles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 80, width: 80),
        Instrument(title: 'Drums'),
        Instrument(title: 'Guitar'),
        Instrument(title: 'Piano'),
        Instrument(title: 'Trumpt'),
      ],
    );
  }
}

class Instrument extends StatelessWidget {
  final String title;
  const Instrument({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      child: Center(
        child: Text(
          '$title',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
