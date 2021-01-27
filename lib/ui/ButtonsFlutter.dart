import 'package:flutter/material.dart';

class ButtonsFlutter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new ButtonState();
  }

}

class ButtonState extends State<ButtonsFlutter>
{
  String name=" ";
  String mynum="";
  void onClickbtn()
  {
    setState(() {
      name=" mohamednour";
    });
  }

  void onClickbtn2(String text)
  {
    setState(() {
      name=text;
    });
  }

  void onClickbtn3()
  {
    setState(() {
      name=" Nour";
    });
  }

  void onClickbtn4()
  {
    setState(() {
      mynum=" IconButton4";
    });
  }

  void onClickbtn5()
  {
    setState(() {
      mynum=" Iconbutton5";
    });
  }


  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       appBar: new AppBar(
         backgroundColor: Colors.blueGrey,
         title: new Text("Buttons"),

       ),
       body: new Container(
         padding: new EdgeInsets.all(22.0),
         child: new Column(
           children: [
             new Text("hello text $name"),
             new RaisedButton(
                 onPressed: onClickbtn
                 , child: new Text("clickedme"),
             ),
             new RaisedButton(
               onPressed:  ()=> onClickbtn2('this is parameter')
               , child: new Text("clickedme2"),
             ),
             new FlatButton(onPressed: onClickbtn3, child: new Text(" seeclickme")),
             new Text("this results is : $mynum"),
             new IconButton(icon: new Icon(Icons.accessibility), onPressed: onClickbtn4),
             new IconButton(icon: new Icon(Icons.add_alert_outlined), onPressed: onClickbtn5),
           ],
         ),
       ),
     );
  }

}