import 'package:flutter/material.dart';
import 'package:button/slide.dart';
import 'package:button/slide_dots.dart';
import 'package:button/slide_item.dart';
import 'package:button/stt.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late Animation omaranimation;
  late AnimationController animationController;
  //margin animation for image
  late Animation<double> marginanimation1;
  //margin animation for button
  late Animation<double> marginanimation2;

  int _currentPage = 0;
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    omaranimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutQuad))
      ..addListener(() {
        setState(() {});
      });
    marginanimation1 = Tween<double>(begin: 100, end: 5).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
    marginanimation2 = Tween<double>(begin: 150, end: 605).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  // void change() {
  //   setState(() {
  //     margin = 610;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/26.png",
              fit: BoxFit.fill,
            )),
        Opacity(
          opacity: omaranimation.value,
          child: Transform.scale(
            scale: 0.6,
            child: AnimatedContainer(
                margin: EdgeInsets.only(top: marginanimation1.value),
                duration: const Duration(milliseconds: 0),
                child: Image.asset("images/24_cropped.png")),
          ),
        ),
        // TweenAnimationBuilder(
        //   child: Center(
        //     child: Image.asset("images/24.png"),
        //   ),
        //   duration: const Duration(milliseconds: 1000),
        //   tween: Tween<double>(begin: 140, end: 20),
        //   builder: (context, double value, child) {
        //     return Padding(
        //       padding: EdgeInsets.only(top: value),
        //       child: child,
        //     );
        //   },
        // ),
        Opacity(
          opacity: omaranimation.value,
          child: Padding(
            padding: const EdgeInsets.only(top: 400),
            child: PageView.builder(
                onPageChanged: _onPageChanged,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideList.length,
                itemBuilder: (ctx, i) => SlideItem(i)),
          ),
        ),
        Opacity(
          opacity: omaranimation.value,
          child: Padding(
            padding: const EdgeInsets.only(top: 650, left: 169),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 200),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < slideList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Opacity(
          opacity: omaranimation.value,
          child: Center(
            child: AnimatedContainer(
                margin: EdgeInsets.only(top: marginanimation2.value),
                duration: const Duration(milliseconds: 0),
                child: SizedBox(
                  height: 65,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SpeechToText()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 35, left: 35),
                          primary: Colors.black.withOpacity(0),
                          onSurface: Colors.white,
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text(
                        "get started",
                        style: TextStyle(fontSize: 33, fontFamily: 'gill'),
                      )),
                )),
          ),
        )
      ],
    ));
  }
}
