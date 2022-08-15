import 'package:flutter/material.dart';
import 'package:flutter_musicdj/pages/homepage_widgets/item_titles.dart';
import 'package:flutter_musicdj/pages/homepage_widgets/music_list_item.dart';

import '../model/instruments_model.dart';
import 'homepage_widgets/music_block.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Row(
          children: [
            const ItemTitles(),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return MusicListItem(
                      instruments: sample[index], index: index);
                }),
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 500,
                    width: 1,
                    color: Colors.white12,
                  );
                },
                itemCount: sample.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
