import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'GpaClass.dart';

void main() => runApp(
      MaterialApp(
        title: 'Calculator App',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(
            seconds: 1,
            navigateAfterSeconds: new gpa(),
            /*  navigateAfterSeconds: new xylophoneapp(
              title: 'XyloPhone App',
            ),*/
            title: new Text(
              'Welcome In SplashScreen',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            /* image: new Image.network('https://i.imgur.com/TyCSG9A.png'),*/
            image: new Image.asset('images/11.png'),
            backgroundColor: Colors.black,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 180.0,
            loaderColor: Colors.red),
      ),
    );
