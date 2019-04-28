import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('123456'),
//         ),
//         body: Center(
//             child: GestureDetector(
//           onTap: () {

//           },
//           child: Container(
//             color: Colors.yellow,
//             child: Text('TURN LIGHTS ON'),
//           ),
//         )));
//   }
//
//}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   var _text = '258'; 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(title: Text("$_text")),
        body: Center(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  _text = '我是3r';
                });
                print('$_text');
              },
              child: Container(
                width: 200.0,
        height: 200.0,
        color: Colors.lightGreen[700] ,
        child:Text('$_text')

              )),
        ));
  }
}
