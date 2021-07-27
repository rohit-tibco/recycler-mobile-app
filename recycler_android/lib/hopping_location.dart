import 'package:flutter/material.dart';
import 'package:recycler_android/widget/tabBarMaterialWidget.dart';

class Hopping extends StatefulWidget {

  @override
  _HoppingState createState() => _HoppingState();
}

class _HoppingState extends State<Hopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBF7CF),
      appBar: AppBar(
        title: Text('Hopping Locations'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar:TabBarMaterialWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.fit_screen),
        backgroundColor: Colors.green,

      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
    );
  }
}
