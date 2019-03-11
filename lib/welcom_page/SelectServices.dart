import 'package:flutter/material.dart';
class Service extends StatefulWidget {
  String name;
  Service({this.name});

  @override
  _ServiceState createState() => _ServiceState(this.name);
}
class _ServiceState extends State<Service> {

  String name;
  _ServiceState(this.name);

  Color activeColor=Colors.white;
  Color activeColorText=Colors.black54;

  setActive(){
    if(activeColor==Colors.white){
      setState(() {
        activeColor=Color(0xFF2f4fa1);
        activeColorText=Colors.white;
      });
    }else{
      setState(() {
        activeColor=Colors.white;
        activeColorText=Colors.black54;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 3,top: 3),
      child: new RaisedButton(
          color: activeColor,
          shape: RoundedRectangleBorder(borderRadius:
          BorderRadius.circular(30)),
          onPressed: setActive,
          child: Text(name,style: TextStyle(color: activeColorText),)
      ),
    );
  }
}
