import 'package:flutter/material.dart';
import 'package:untitled123/modelveiw/colors.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  ColorCh y=ColorCh();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: y.x,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                y.changeColor();
              });
            }, child: Text('Chaneg'))
          ],
        ),
      ),
    );
  }
}