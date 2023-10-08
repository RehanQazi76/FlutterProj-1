import 'package:flutter/material.dart';
import 'dart:math';
class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Center(child: Text("Dicee",
        style: TextStyle(
          fontFamily: "Pacifico",
          fontSize: 30.0,
        ),),
       ),
       backgroundColor: Colors.red[600],
      ),
      backgroundColor: Colors.red,

      body:rollIt(),
   
    );
  }
}
class rollIt extends StatefulWidget {
  const rollIt({super.key});

  @override
  State<rollIt> createState() => _rollItState();
}

class _rollItState extends State<rollIt> {
  int digiL=1;
  int digiR=1;
  void roll(){
  setState(() {
   digiL=Random().nextInt(6)+1;
   digiR=Random().nextInt(6)+1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
        const Text("Come on roll it",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "UbuntoMono",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
        ),
        
        SizedBox(
          height: 10.0,
        ),
        Row(
          
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  roll();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(
                    image: AssetImage("images/dice$digiL.png"), 
                    ),
                ),
              ),
            ),
            SizedBox(width: 5.0,),
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    roll();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(
                    image: AssetImage("images/dice$digiR.png"), 
                    ),
                ),
              ),
            ),
          ],
        ),
      ],
    );;
  }
}
