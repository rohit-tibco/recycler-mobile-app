import 'package:flutter/material.dart';
import 'package:recycler_android/widget/tabBarMaterialWidget.dart';

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBF7CF),
      appBar: AppBar(
        title: Text('Scanner'),
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
