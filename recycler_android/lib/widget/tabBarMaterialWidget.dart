import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(index:0, icon: Icon(Icons.home, color: Colors.green,)),
          buildTabItem(index:1, icon: Icon(Icons.person, color: Colors.green,)),
          buildTabItem(index:2, icon: Icon(Icons.pets, color: Colors.green,)),
          buildTabItem(index:3, icon:Icon(Icons.paid, color: Colors.green,)),
        ],
      ),
      color: Color(0xFFDBF7CF),
    );
  }

  Widget buildTabItem({required int index,
      required Icon icon}){
    return IconButton(onPressed: (){}, icon: icon);
  }
}
