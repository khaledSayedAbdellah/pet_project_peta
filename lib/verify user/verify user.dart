import 'package:flutter/material.dart';
import '../Health care/healthCare.dart';

class verifyUser extends StatefulWidget {
  @override
  _verifyUserState createState() => _verifyUserState();
}

class _verifyUserState extends State<verifyUser> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
//        new Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(
//              image: new AssetImage(""),
//              fit: BoxFit.cover,
//            ),
//          ),
//        ),

        ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 84,
                  margin: EdgeInsets.only(left: 24, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          icon: Image.asset(
                            "image/back.jpg",
                            height: 16,
                            width: 16,
                          ),
                          label: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back,
                                color: Color(0xff5c5c5c),
                              ),
                              Text(
                                "Back",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )),
                      RaisedButton.icon(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/welcome', (Route<dynamic> route) => false);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.shade600,
                          ),
                          label: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Request information",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 4),
                  child: Text(
                    "Finish your request by adding the information disblayed below",
                    style: TextStyle(fontSize: 14, color: Color(0xff5c5c5c)),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 280,
                      padding: EdgeInsets.only(left: 20),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "John Doe",
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "11 El Yasmine Villas, Fifth settlement, New Cairo",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("(+20) 1234567890"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 230,
                  padding:EdgeInsets.only(right: 50) ,
                  child: RaisedButton(
                    color: Colors.white,
                      onPressed:(){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Verify user",style: TextStyle(fontSize: 14),),
                        Icon(Icons.add,size: 15,)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 170,
                  padding: EdgeInsets.only(left: 24),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              this._checkbox2
                                  ? setState(() => {
                                        this._checkbox2 = false,
                                        this._checkbox1 = true
                                      })
                                  : setState(() => {this._checkbox1 = value});
                            },
                            value: this._checkbox1,
                          ),
                          _checkbox1?
                          Text("Schedule a visit",
                              style: TextStyle(
                                color: Colors.green,
                                  fontSize: 15
                              )):Text("Schedule a visit",
                              style: TextStyle(
                                color: Color(0xff5c5c5c),
                                  fontSize: 15
                              ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              this._checkbox1
                                  ? setState(() => {
                              this._checkbox1 = false,
                              this._checkbox2 = true
                              })
                                  : setState(() => {this._checkbox2 = value});
                            },
                            value: this._checkbox2,
                          ),
                          _checkbox2?
                          Text(
                            "Priority Service",
                            style: TextStyle(
                              color: Colors.green,
                                fontSize: 15
                            ),
                          ):Text(
                            "Priority Service",
                            style: TextStyle(
                              color: Color(0xff5c5c5c),
                                fontSize: 15
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: 310,
                  height: 50,
                  child: RaisedButton(
                      disabledColor: Color(0xffdedede),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/Helth');
                      },
                      child: Text(
                        "Next",
                        style:
                            TextStyle(fontSize: 20, color: Colors.black),
                      )),

                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
