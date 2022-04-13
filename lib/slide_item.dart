import 'package:flutter/material.dart';
import 'package:button/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          slideList[index].title1,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 35,
              decoration: TextDecoration.none,
              fontFamily: 'gill',
              color: Colors.red),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(slideList[index].title2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'gill',
              fontSize: 50,
            ))
      ],
    );
  }
}
