import 'package:flutter/material.dart';
// import 'home_screen.dart';
// import 'email_screen.dart';
// import 'page_screen.dart';
// import 'airplay_scrren.dart';

void main(){
  runApp(MaterialApp(
    title:'',
    home:ParentWidget()
  ));
 }
 class _TapBoxB extends StatelessWidget {   // 此时子控件是Stateless的 
//  var active = false;
  final active;
  final ValueChanged<bool> onChanged;
  _TapBoxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);
  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  var _active = false;
  _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new _TapBoxB(
        active: _active,   // 传值
        onChanged: _handleTapboxChanged,  // 回调，用于触发回调
      ),
    );
  }
}
// class BottomNavigationWidget extends StatefulWidget {
//   _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
// }

// class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
//   final _color = Colors.blue;
//   int _currentIndex = 0;
//   List<Widget> list = List();

//   @override
//   void initState(){
//     list
//       ..add(HomeScreen())
//       ..add(EmailScreen())
//       ..add(PageScreen())
//       ..add(AirplayScreen());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//        body: list[_currentIndex],
//        bottomNavigationBar: BottomNavigationBar(
//          items: [
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.home,
//                color:_color,
//              ),
//              title:Text(
//                'Home',
//                style:TextStyle(color:_color)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.email,
//                color:_color,
//              ),
//              title:Text(
//                'Email',
//                style:TextStyle(color:_color)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.pages,
//                color:_color,
//              ),
//              title:Text(
//                'Pages',
//                style:TextStyle(color:_color)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.airplay,
//                color:_color,
//              ),
//              title:Text(
//                'AipPlay',
//                style:TextStyle(color:_color)
//              )
//            ),
//          ],
//          currentIndex:_currentIndex,
//          onTap:(int index){
//            setState((){
//              _currentIndex= index;
//            });
//          },
//          type:BottomNavigationBarType.fixed
//        ),
//      );
//   }
// }