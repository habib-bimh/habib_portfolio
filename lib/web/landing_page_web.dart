import 'package:flutter/material.dart';
import 'package:habibur_rahman/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDivise= MediaQuery.of(context).size.height;
    // String h="Hello I'm";
    // int s=15;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        title:Row(
          children: [
            Spacer(flex: 3,),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),

          ],
        )
      ),
      body:ListView(
        children: [
          //Fist page
          Container(
            height:heightDivise-56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: SansBold("Hello I'm",15),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold("Habibur Rahman", 55.0),
                    Sans("Flutter devloper",30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20,),
                        Sans("habib.mahedi007@gmail.com", 15.0)
                      ],
                    ),SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20,),
                        Sans("01714449016", 15.0)
                      ],
                    ),SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20,),
                        Sans("Bangladesh,Dhaka", 15.0)
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/3h.png"),
                    ),
                  ),
                ),
              ],
            )
          ),
        Container(
          height: heightDivise/1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/web6.jpg",height: heightDivise/1.7,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 40),
                  SizedBox(height: 15,),
                  Sans("Hello! I'm Habibur rahman I specializa in flutter devloper.", 15),
                  Sans("I strive to ensure astounding performance with state of",15 ),
                  Sans("the art security for Android, Ios, Mac, Web, Linux, and Windows", 15),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Flutter",15),
                      ),
                      SizedBox(width: 7.0,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Firebase",15),
                      ),
                      SizedBox(width: 7.0,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Android ",15),
                      ),
                      SizedBox(width: 7.0,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Ios",15),
                      ),
                      SizedBox(width: 7.0,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                              style: BorderStyle.solid
                          ),
                          borderRadius: BorderRadius.circular(5.0),

                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("windows",15),
                      ),

                    ],
                  )
                ],
              ),
            ],
          )
        ),
        ],
      ),
    );
  }
}
