import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        CarouselSlider(items:[
          Image.network('https://e7.pngegg.com/pngimages/77/285/png-clipart-iphone-8-plus-iphone-7-plus-iphone-5-iphone-x-iphone-6s-iphone-apple-electronics-gadget.png'),
          Image.network('https://e7.pngegg.com/pngimages/77/285/png-clipart-iphone-8-plus-iphone-7-plus-iphone-5-iphone-x-iphone-6s-iphone-apple-electronics-gadget.png'),
          Image.network('https://t-mobile.scene7.com/is/image/Tmusprod/fg-iPhone-i5-lineup1?ts=1698347184484&fmt=png-alpha&dpr=off'),
        ], options: CarouselOptions())
      ]),
    );
  }

}