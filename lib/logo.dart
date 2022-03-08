import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  Logo({Key? key}) : super(key: key);

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
    marginanimation2 = Tween<double>(begin: 150, end: 590).animate(
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
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/26.png",
              fit: BoxFit.fill,
            )),
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
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 35, left: 35),
                        primary: Colors.black26,
                        onSurface: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(fontSize: 37, fontFamily: 'gill'),
                    ))),
          ),
        )
      ],
    ));
  }
}
