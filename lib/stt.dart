import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_speech/flutter_speech.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:button/refersh.dart';
// import 'package:button/Map.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SpeechToText extends StatefulWidget {
  static const routeName = '/drw';
  const SpeechToText({Key? key}) : super(key: key);

  @override
  _SpeechToTextState createState() => _SpeechToTextState();
}

const languages = [
  Language('Arabic', 'ar_EG'),
  Language('English', 'en_US'),
  Language('Francais', 'fr_FR'),
  Language('Español', 'es_ES'),
];

class Language {
  final String name;
  final String code;

  const Language(this.name, this.code);
}

class _SpeechToTextState extends State<SpeechToText> {
  late SpeechRecognition _speech;

  bool _speechRecognitionAvailable = false;
  bool _isListening = false;

  String transcription = '';
  String asset = 'assets/gifs/Null.gif';
  var color = Colors.grey[300];

  // String _currentLocale = 'en_US';
  Language selectedLang = languages.first;

  @override
  initState() {
    super.initState();

    activateSpeechRecognizer();
  }

  void choose() {
    transcription == 'animal'
        ? asset = 'assets/gifs/Animal.gif'
        : transcription == 'anything'
            ? asset = 'assets/gifs/Anything.gif'
            : transcription == 'banana'
                ? asset = 'assets/gifs/Banana.gif'
                : transcription == 'bird'
                    ? asset = 'assets/gifs/Bird.gif'
                    : transcription == 'biscuit'
                        ? asset = 'assets/gifs/Biscuit.gif'
                        : transcription == 'boy'
                            ? asset = 'assets/gifs/Boy.gif'
                            : transcription == 'bread'
                                ? asset = 'assets/gifs/Bread.gif'
                                : transcription == 'breakfast'
                                    ? asset = 'assets/gifs/Breakfast.gif'
                                    : transcription == 'brother'
                                        ? asset = 'assets/gifs/Brother.gif'
                                        : transcription == 'burger'
                                            ? asset = 'assets/gifs/Burger.gif'
                                            : transcription == 'spoon' ||
                                                    transcription == 'معلقه'
                                                ? asset =
                                                    'assets/gifs/Spoon.gif'
                                                : asset =
                                                    'assets/gifs/Null.gif';
    // asset = gifs[transcription];
  }

  void activateSpeechRecognizer() {
    print('_MyAppState.activateSpeechRecognizer... ');
    _speech = SpeechRecognition();
    _speech.setAvailabilityHandler(onSpeechAvailability);
    _speech.setRecognitionStartedHandler(onRecognitionStarted);
    _speech.setRecognitionResultHandler(onRecognitionResult);
    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
    _speech.setErrorHandler(errorHandler);
    _speech.activate('ar_EG').then((res) {
      setState(() => _speechRecognitionAvailable = res);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var soundBars = const LoadingIndicator(
        indicatorType: Indicator.lineScalePulseOut,
        // ignore: prefer_const_literals_to_create_immutables
        colors: [
          Colors.grey,
          Colors.grey,
          Colors.grey,
          Colors.grey,
          Colors.grey
        ],
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        pathBackgroundColor: Color.fromRGBO(0, 0, 0, 0));
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("images/cover.png", fit: BoxFit.cover),
        ),
        Positioned(
          child: Container(
            height: size.height,
            // // decoration: BoxDecoration(
            // //   gradient: LinearGradient(
            // //       begin: Alignment.topCenter, end: Alignment.bottomCenter,
            // //       // ignore: prefer_const_literals_to_create_immutables
            // //       colors: [Color(0xff2e3037), Color(0xff14161a)]),
            // ),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 55, bottom: 10),
                    child: Text('Voice to sign language',
                        style: TextStyle(
                            fontFamily: 'gill',
                            color: Colors.white,
                            fontSize: 25)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ....................image ................
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Image.asset(
                          asset,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.grey[50],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _isListening
                                ? Text('   Listening ... ',
                                    style: TextStyle(
                                        fontFamily: 'gill',
                                        color: Color(0xffCE493D),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))
                                : Container(),
                            Center(
                              child: Text(transcription,
                                  style: TextStyle(
                                    fontFamily: 'gill',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      _isListening
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                // ignore: sized_box_for_whitespace
                                child: Container(
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      soundBars,
                                      soundBars,
                                      soundBars,
                                      soundBars,
                                      soundBars,
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(top: 60),
            width: size.width,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Color(0xff2e3037)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            // ignore: unnecessary_new
                            new MaterialPageRoute(
                                builder: (BuildContext context) {
                          return Refersh();
                        }));
                        Navigator.of(context).pushReplacement(
                            // ignore: unnecessary_new
                            new MaterialPageRoute(
                                builder: (BuildContext context) {
                          return SpeechToText();
                        }));
                      },
                      icon: Image.asset('images/redo.png')),
                  SizedBox(width: 100),
                  PopupMenuButton<Language>(
                    icon: Image.asset('images/language.png'),
                    onSelected: _selectLangHandler,
                    itemBuilder: (BuildContext context) =>
                        _buildLanguagesWidgets,
                  ),
                ]),
          ),
        ),
        Positioned(
          bottom: 45,
          left: (size.width - 60) / 2,
          child: GestureDetector(
            onLongPress: _speechRecognitionAvailable && !_isListening
                ? () {
                    setState(() {
                      start();
                    });
                  }
                : null,
            onLongPressEnd: (LongPressEndDetails details) {
              Timer(Duration(milliseconds: 1300), () {
                cancel();
                choose();
                setState(() {});
                selectedLang.code == 'ar_EG'
                    ? color = Colors.grey[300]
                    : color = Colors.white;
                if (asset == 'assets/gifs/Null.gif') {
                  color = Colors.grey[300];
                }
              });
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color.fromARGB(255, 169, 36, 27),
                // gradient: LinearGradient(
                //     begin: Alignment.bottomCenter,
                //     end: Alignment.topCenter,
                //     colors: const [
                //       Color.fromARGB(255, 191, 73, 34),
                //       Color(0xff16298c)
                //     ])
              ),
              child: AvatarGlow(
                  animate: _isListening,
                  glowColor: Color.fromARGB(255, 131, 12, 32),
                  endRadius: 60,
                  duration: Duration(milliseconds: 2000),
                  repeatPauseDuration: Duration(milliseconds: 100),
                  repeat: _isListening,
                  child: Image.asset(
                    'images/mic.png',
                    height: 40,
                  )),
            ),
          ),
        ),
      ]),
    );
  }

  List<CheckedPopupMenuItem<Language>> get _buildLanguagesWidgets => languages
      .map((l) => CheckedPopupMenuItem<Language>(
            value: l,
            checked: selectedLang == l,
            child: Text(l.name),
          ))
      .toList();

  void _selectLangHandler(Language lang) {
    setState(() => selectedLang = lang);
  }

  void start() => _speech.activate(selectedLang.code).then((_) {
        return _speech.listen().then((result) {
          print('_MyAppState.start => result $result');
          setState(() => _isListening = result);
        });
      });

  void cancel() =>
      _speech.cancel().then((_) => setState(() => _isListening = false));

  void onSpeechAvailability(bool result) =>
      setState(() => _speechRecognitionAvailable = result);

  void onCurrentLocale(String locale) {
    print('_MyAppState.onCurrentLocale... $locale');
    setState(
        () => selectedLang = languages.firstWhere((l) => l.code == locale));
  }

  void onRecognitionStarted() {
    setState(() => _isListening = true);
  }

  void onRecognitionResult(String text) {
    print('_MyAppState.onRecognitionResult... $text');
    setState(() {
      transcription = text;
    });
  }

  void onRecognitionComplete(String text) {
    print('_MyAppState.onRecognitionComplete... $text');
    setState(() {
      _isListening = false;
    });
  }

  void errorHandler() => activateSpeechRecognizer();

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }
}
