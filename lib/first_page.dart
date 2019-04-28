import 'package:flutter/material.dart';
const textStyle = const TextStyle(
  fontFamily: 'myfont',
  fontSize:40
);

class FisrtPage extends StatefulWidget {
  @override
  _FisrtPageState createState() => _FisrtPageState();
}

class _FisrtPageState extends State<FisrtPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.blue,
      appBar:AppBar(
        title:Text('FirstPage超级高兴哦',style: textStyle),
        elevation: 0.0,
      ),
      body:Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color:Colors.white,
            size:64.0,
          ),
          onPressed: (){
            print('你是谁');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(BuildContext context){
                     return SecondPage();
                  }));
          },
        ),
      )
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar:AppBar(
        title:Text('第二个页面')
      ),
      body:Center(child: MaterialButton(
        child: Icon(
            Icons.navigate_before,
            color:Colors.white,
            size:64.0
          ),
          onPressed: ()=>Navigator.of(context).pop(),
      ),)
      
    );
  }
}