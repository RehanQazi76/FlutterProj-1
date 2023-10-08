import 'package:flutter/material.dart';
import 'package:udemy_1/pages/dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color.fromARGB(255, 226, 31, 31),
      
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget> [

            const Center(
              child: CircleAvatar(

                radius: 100,
                backgroundImage: AssetImage("images/me.jpg"),
              ),
            ),
            const Text("Rehan Qazi",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.w200,
                
                fontStyle: FontStyle.italic,
              ),
            ),

            const Text("Flutter Developer",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'UbuntuMono',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 6.0,
              width: 250.0,
              child: Divider(thickness: 3.0,color: Colors.white,),
            ),
            Card(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:ListTile(
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Dicee() ,
                      ),
                    );
                  },
                contentPadding: EdgeInsets.all(10.0),
                leading:  Icon(
                    Icons.phone,
                    color: Colors.red[400],
                    
                  ),
                  title:const Text("9137473829",
                  style: TextStyle(
                    fontFamily: "TimesNewRoman",
                    fontSize: 20,
              
                  ) ,
              ),
              ),
            ),
            
             Card(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:ListTile(
                contentPadding: EdgeInsets.all(10.0),
                leading:  Icon(
                    Icons.email,
                    color: Colors.red[400],
                    
                  ),
                  title:const Text("Rehanqazi@gmail.com",
                  style: TextStyle(
                    fontFamily: "TimesNewRoman",
                    fontSize: 20,
              
                  ) ,
              ),
              ),
            ),
            
          ],
        ),
      ) ,
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
