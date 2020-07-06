import 'dart:math';

Map<String, int> colorList = {
  'red': 0xfff44336,
  'yellow': 0xffff9800,
  'lime': 0xffcddc39,
  'lightGreen': 0xff8bc34a,
  'skyBlue': 0xff03a9f4,
  'blue': 0xff2196f3,
  'violet': 0xff9c27b0,
  'pink': 0xffe91e63,
  'blueGreen': 0xff009688,
  'orange': 0xffff5722
};

Map<String, dynamic> catColorList = {
  'failure': {
    'color': colorList['blue'],
    'image': 'images/failure.png',
  },
  'love': {
    'color': colorList['pink'],
    'image': 'images/love.png',
  },
  'inspirational': {
    'color': colorList['orange'],
    'image': 'images/inspirational.png',
  },
  'nature': {
    'color': colorList['lightGreen'],
    'image': 'images/nature.png',
  },
  'smile': {
    'color': colorList['yellow'],
    'image': 'images/smile.png',
  },
};

List<String> getCategoryList() {
  return catColorList.keys.toList();
}

int getRandomQuoteColor() {
  int i = Random().nextInt(colorList.keys.length);
  return colorList[colorList.keys.toList()[i]];
}
