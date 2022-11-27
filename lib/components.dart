// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title,{Key? key}) : super(key: key);


  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected=false ;
  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (_){
        setState(() {
          isSelected=true;
        });
      },
      onExit: (_){
        setState(() {
          isSelected=false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected ? GoogleFonts.oswald(
          shadows: [Shadow(color: Colors.black,offset: Offset(0,-8))],
          color: Colors.transparent,
          decorationThickness: 1,
          decoration: TextDecoration.underline,
            decorationColor: Colors.tealAccent,
          fontSize: 25.0
        ):GoogleFonts.oswald(color: Colors.black,fontSize: 23.0),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text,this.size,{Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
   // var c=String.parse(size);
    //var c=size;
    return Text(text,style: GoogleFonts.openSans(fontSize: size,fontWeight: FontWeight.bold),);
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text,this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.openSans(fontSize: size),);
  }
}






