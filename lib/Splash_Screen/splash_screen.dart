import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:scriptify/Main/Home.dart";
import "dart:async";


class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 1300), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/L1.png",height: height*0.15,),
                  SizedBox(height: height*0.01,),
                  Text("Scriptify",style: GoogleFonts.sacramento(color: Colors.white,fontSize: 30)),
                ],
              )
          ),
        ),
      )
    ));
  }
}
