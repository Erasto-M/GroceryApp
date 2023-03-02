import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Images",
        style: GoogleFonts.roboto(color: Colors.brown,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
