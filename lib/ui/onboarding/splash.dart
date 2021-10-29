import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hot_singles/ui/onboarding//onboarding.dart';
import 'package:hot_singles/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  Color backgr = Colors.white;
  bool change = false;
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        backgr = logocolor;
        change = true;
        //linearGradient = Colors.white.createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
      });
      Timer(
          const Duration(seconds: 3),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const Onboarding())));
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Shader linearGradient = const LinearGradient(
      // begin: Alignment.bottomLeft,
      // end: Alignment.topRight,
      // stops: [0.1, 0.5, 0.75],
      colors: <Color>[
        Color.fromRGBO(229, 229, 229, 1),
        Color.fromRGBO(255, 255, 255, 0),
        Color.fromRGBO(251, 178, 150, 1),
      ],
    ).createShader(const Rect.fromLTWH(2000.0, 200.0, 200.0, 70.0));

    _timer;
    // var assetsImage =  AssetImage(
    //     'images/new_logo.png'); //<- Creates an object that fetches an image.
    // var image = new Image(
    //     image: assetsImage,
    //     height: 300); //<- Creates a widget that displays an image.

    return Scaffold(
      /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
      body: Container(
        decoration: BoxDecoration(color: backgr),
        child: Center(
            child: change
                ? Center(
                    child: Text("Hot Singles",
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                : Text("Hot Singles",
                    style: GoogleFonts.pacifico(
                      //color: const Color.fromRGBO(251, 178, 150, 1),
                      foreground: Paint()..shader = linearGradient,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ))),
      ), //<- place where the image appears
    );
  }
}
