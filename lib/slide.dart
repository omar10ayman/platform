import 'package:flutter/material.dart';

class Slide {
  final String title1;
  final String title2;

  Slide({
    required this.title1,
    required this.title2,
  });
}

final slideList = [
  Slide(title1: 'Welcome to ', title2: 'Two-Way sign language translator'),
  Slide(
      title1: 'A communication platform',
      title2: 'for helping the deaf and mute'),
];
