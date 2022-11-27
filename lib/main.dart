import 'package:flutter/material.dart';
import 'package:habibur_rahman/mobile/landing_page_mobile.dart';
import 'package:habibur_rahman/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
          builder: (context, constraints ){
            if(constraints.maxWidth>800){
              return LandingPageWeb();
            }else{
              return LandingPageMobile();
            }
          },
      ),
    );
  }
}
