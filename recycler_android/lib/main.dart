import 'package:flutter/material.dart';
import 'package:recycler_android/hopping_location.dart';
import 'package:recycler_android/scanner.dart';
import 'package:recycler_android/profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Profile(),
      '/home': (context) => Home(),
      '/scan': (context) => Scanner(),
      '/hopper': (context) => Hopping()
    },
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.lightGreen[400],
      backgroundColor: Color(0xFFDBF7CF),
      appBar: AppBar(
        title: Text('Beyond Recycler'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.fit_screen),
            tooltip: 'Comment Icon',
            onPressed: () {
              Navigator.pushNamed(context, '/scan');
            },
          ), //IconButton
          IconButton(
            icon: Icon(Icons.local_shipping_sharp),
            tooltip: 'Setting Icon',
            onPressed: () {
              Navigator.pushNamed(context, '/hopper');
            },
          ), //IconButton
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        margin: EdgeInsets.symmetric(vertical: 4.0,horizontal: 4.0),
      //  color:Colors.amber[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 290,
            //  color: Colors.red,
              child: Image(
                image: AssetImage('images/landing_logo.png'),
                width: 370,
              ),

            ),
            Container(
              height: 230,
            //  color: Colors.lightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(7.0),
                  child: Text('Beyond Recycling',
                      style: TextStyle(fontSize: 22, color: Colors.green,
                      fontFamily: 'CormorantGaramond-SemiItalic',
                      ))
                  ),

                  Text('Powering Today, Protecting Generations',
                      style: TextStyle(fontSize: 14, color: Colors.green,
                        fontFamily: 'CormorantGaramond-SemiBoldItalic',
                          letterSpacing: 1.4)),
                ],
              ),

            ),
            Container(
              height: 230,
             // color: Colors.blueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Signin with:',maxLines: 2,style: TextStyle(fontSize: 14, color: Colors.green)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child:Image(
                            image: AssetImage('images/google signin.png'),
                            fit:BoxFit.cover,
                          ),
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                    ),
                      ),
                      Container(
                          child:Image(
                            image: AssetImage('images/facebook_logo.png'),
                            fit:BoxFit.cover,
                          ),
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                      ),
                    ],
                  )

                ],
              )


            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: null,
      //   child: Text('Cycle'),
      //   backgroundColor: Colors.lightGreen,
      // ),
    );
  }
}







