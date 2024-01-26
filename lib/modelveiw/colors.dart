import 'package:flutter/material.dart';

class ColorCh{
  Color x=Colors.red;

  changeColor(){
if (x==Colors.red) {
  x=Colors.blueAccent;
}
else{
  x=Colors.red;
}
  }
}