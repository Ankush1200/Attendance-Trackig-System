import 'package:flutter/material.dart';

Color textColor=Colors.white;
Color yellowColor=Colors.yellow;
// ---------------------- Gradient AppBackground theame ------------------------------------
class GradientScaffold {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF0E0A19), // Convert hex color to Flutter Color
        Color.fromARGB(255, 91, 112, 248),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.0, 1.0], // Add stops if necessary
      tileMode: TileMode.clamp,
    ),
  );
}

// ---------------------- Image AppBackground theame ------------------------------------
class ImageScaffold {
  static const BoxDecoration imageScaffold = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF110c1d),
          Color(0xFF382b55),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      image: DecorationImage(
          image: AssetImage('assets/images/1.jpeg'),
          fit: BoxFit.cover));
}

// ---------------------- Text Styling ------------------------------------
class NormalTextStyle{
  static const  TextStyle headingstyle=TextStyle(
    fontFamily: 'PortLligatSans',
    fontSize:50,
    fontWeight: FontWeight.w500,
    color:Colors.white,
  );

  static const TextStyle textStyle =  TextStyle(
    fontFamily: 'Roboto',
    fontSize: 15,
    color: Colors.white,
  );
}

class AppBarDecoration{
  static const TextStyle appBarStyle=TextStyle(
    fontFamily: 'PortLligatSans',
    fontSize: 30,
    color: Colors.yellow,
  );
}

class InputFromStyle{
  static InputDecoration customDecoration({
    required String hintText,
    required IconData prefixIcon,
  }) {
    return InputDecoration(
      labelText: hintText,
      labelStyle: const TextStyle(color: Colors.white),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
      prefixIcon: Icon(prefixIcon,color: Colors.white),
    );
  }
}