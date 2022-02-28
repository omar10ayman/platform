import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  Animation? omaranimation;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    omaranimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: animationController!, curve: Curves.easeInOutQuart))
      ..addListener(() {
        setState(() {});
      });
    animationController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/25.jpg",
              fit: BoxFit.fill,
            )),
        Opacity(
          opacity: omaranimation?.value,
          child: Center(
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset("images/24.png")),
          ),
        ),
        Opacity(
          opacity: omaranimation?.value,
          child: Center(
            child: Container(
                margin: const EdgeInsets.only(top: 610),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        primary: Colors.black26,
                        onSurface: Colors.white,
                        side: BorderSide(color: Colors.white, width: 4),
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
