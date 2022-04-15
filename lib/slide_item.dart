import 'package:flutter/material.dart';
import 'package:button/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(slideList[index].title1));
  }
}
