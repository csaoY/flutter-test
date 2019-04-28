// 底部导航
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'email_screen.dart';
import 'page_screen.dart';
import 'airplay_scrren.dart';

void main(){
  runApp(MaterialApp(
    title:'',
    home:BottomNavigationWidget()
  ));
 }

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _color = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PageScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
             icon:Icon(
               Icons.home,
               color:_color,
             ),
             title:Text(
               'Home',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.email,
               color:_color,
             ),
             title:Text(
               'Email',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.pages,
               color:_color,
             ),
             title:Text(
               'Pages',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.airplay,
               color:_color,
             ),
             title:Text(
               'AipPlay',
               style:TextStyle(color:_color)
             )
           ),
         ],
         currentIndex:_currentIndex,
         onTap:(int index){
           setState((){
             _currentIndex= index;
           });
         },
         type:BottomNavigationBarType.fixed
       ),
     );
  }
}