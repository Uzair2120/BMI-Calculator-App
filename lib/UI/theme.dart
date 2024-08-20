import 'package:flutter/material.dart';

TextStyle mainHeading() {
  return TextStyle(color: Colors.black87, fontSize: 21, fontFamily: 'Poppins', fontWeight: FontWeight.bold);
}

TextStyle Button(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
    color: Colors.white
  );
}

TextStyle Labels(){
  const themeColor2 = Color(0xFF3E67AC);
  return TextStyle(
    fontSize: 17,
    color: themeColor2,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold
  );
}

TextStyle smallLabel(){
  const themeColor2 = Color(0xFF31A1E4);
  return TextStyle(
      fontSize: 13,
      color: themeColor2,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold
  );
}
