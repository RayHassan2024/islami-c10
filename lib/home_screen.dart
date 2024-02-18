

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = "Home";
HomeScreen({super.key});
String? hello;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),fit: BoxFit.fill)),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("إسلامى", style: GoogleFonts.elMessiri(fontSize: 30 ,fontWeight: FontWeight.w700),),
         ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index,
        onTap: (valu) {
           index=valu;
           setState(() {
           });
        },
        showSelectedLabels:false,
         showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.abc),label: "")

      ]),
      ),
    );
  }
}
