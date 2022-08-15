const String assetlocation = 'music_instruments/';
const String f0 = '0/';
const String f1 = '1/';
const String f2 = '2/';
const String f3 = '3/';

class MusicInstrument {
  //TODO-Drums
  static const String drumfiles = assetlocation + f0;
  //Introduction DI
  //Verse DV
  //Chorus DC
  //Solo DS

  //TODO-Bass
  static const String bassfiles = assetlocation + f1;
  //Introduction
  //Verse
  //Chorus
  //Solo

  //TODO-Keys
  static const String keysfiles = assetlocation + f2;
  //Introduction
  //Verse
  //Chorus
  //Solo

  //TODO-Trumpt
  static const String trumptfiles = assetlocation + f3;
  //Introduction
  //Verse
  //Chorus
  //Solo

  static String? getItem(int type) {
    switch (type) {
      case 0:
        return drumfiles;
      case 1:
        return bassfiles;
      case 2:
        return keysfiles;
      case 3:
        return trumptfiles;
      default:
        return null;
    }
  }
}
