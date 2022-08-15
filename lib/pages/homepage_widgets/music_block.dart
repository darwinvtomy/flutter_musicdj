import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_musicdj/resources/music_instruments.dart';
import 'package:flutter_musicdj/styles/color.dart';

class MusicBlock extends StatelessWidget {
  final int text;
  final int type;
  const MusicBlock({Key? key, required this.text, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: text == 0 ? Colors.white12 : Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        fit: StackFit.loose,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: text == 0
                ? const SizedBox()
                : InkWell(
                    onTap: () {
                      String source =
                          '${MusicInstrument.getItem(type)}${text}.ogg';
                      print(source);

                      player.play(AssetSource(source));
                    },
                    child: LinearProgressIndicator(
                      backgroundColor: getBackGroundColor(text),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        getProgressColor(text),
                      ),
                      minHeight: 80,
                      value: 0.6,
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
          ),
          if (text != 0)
            Center(
              child: Text(
                '$text',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color getBackGroundColor(int text) {
    if (text == 0) {
      return Colors.white12;
    } else if (text <= 8) {
      return ColorManager.lightblue;
    } else if (text <= 16) {
      return ColorManager.lightgreen;
    } else if (text <= 24) {
      return ColorManager.lightpink;
    } else if (text <= 32) {
      return ColorManager.lightbrown;
    }

    return Colors.white12;
  }

  Color getProgressColor(int text) {
    if (text == 0) {
      return Colors.white12;
    } else if (text <= 8) {
      return ColorManager.darkblue;
    } else if (text <= 16) {
      return ColorManager.darkgreen;
    } else if (text <= 24) {
      return ColorManager.darkpink;
    } else if (text <= 32) {
      return ColorManager.darkBrown;
    }

    return Colors.white12;
  }
}
