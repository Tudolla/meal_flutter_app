import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/meals.dart';

class TabScreen extends StatefulWidget{
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }

}

class _TabScreenState extends State<TabScreen>{
  int _pageIndex = 0 ; 

  void _selectPage(int index){
    setState(() {
      _pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var pageTitle = 'Home';

    if(_pageIndex == 1){
      activePage = MealScreen( meals: []);
      pageTitle = 'Favorite Page';
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle),),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _pageIndex,
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favors'),
        
      ],),
    );
  }

}