import 'package:flutter/material.dart';

import '../utils/my_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
  //Donut Tab
  const MyTab(iconPath: 'lib/icons/donut.png'),
  //Burger Tab
  const MyTab(iconPath: 'lib/icons/burger.png'),
  //Smoothie Tab
  const MyTab(iconPath: 'lib/icons/smoothie.png'),
  //Pancake Tab
  const MyTab(iconPath: 'lib/icons/pancakes.png'),
  //Pizza Tab
  const MyTab(iconPath: 'lib/icons/pizza.png'),
];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left:24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size: 36), onPressed: () { print('Botón de menú'); },),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right:24.0),
            child: IconButton(icon: Icon(Icons.person, color:Colors.grey[800],size: 36), onPressed: () { print('Botón de Usuario'); },),
          )],
          ),
          body: Column(children: [
            //Texto "I Want To Eat"
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text('I Want to ', style: TextStyle(fontSize: 32),),
                  Text('Eat', style: TextStyle(fontSize: 32, fontWeight:FontWeight.bold, decoration: TextDecoration.underline),),
                ],
              ),
            ),
            //Tap bar
            TabBar(tabs: myTabs),
            //Tap bar view
            Expanded(child: TabBarView(children: [
              //Donut
              DonutTab(),
              //Burger
              BurgerTab(),
              //Smoothie
              SmoothieTab(),
              //Pancake
              PancakeTab(),
              //Pizza
              PizzaTab(),
            ]),)
          ]),
      ),
    );
  }
}