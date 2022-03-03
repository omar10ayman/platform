import 'package:flutter/material.dart';
//import 'dart:math';

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
    marginanimation1 = Tween<double>(begin: 140, end: 20).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
    marginanimation2 = Tween<double>(begin: 150, end: 630).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  // void change() {
  //   setState(() {
  //     margin = 610;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF191919),
        body: Stack(
          children: [
            // SizedBox(
            //     width: double.infinity,
            //     height: double.infinity,
            //     child: Image.asset(
            //       "images/25.jpg",
            //       fit: BoxFit.fill,
            //     )),
            Opacity(
              opacity: omaranimation.value,
              child: Center(
                child: AnimatedContainer(
                    margin: EdgeInsets.only(top: marginanimation1.value),
                    duration: const Duration(milliseconds: 0),
                    child: Image.asset("images/24.png")),
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
            ),
            Opacity(
              opacity: omaranimation.value,
              child: Center(
                child: AnimatedContainer(
                    margin: EdgeInsets.only(top: marginanimation2.value),
                    duration: const Duration(milliseconds: 0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            primary: Colors.black26,
                            onSurface: Colors.white,
                            side:
                                const BorderSide(color: Colors.white, width: 4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          "    GET STARTED    ",
                          style: TextStyle(fontSize: 25, fontFamily: 'gill'),
                        ))),
              ),
            )
          ],
        ));
  }
}
