import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';
import '../verify user/verify user.dart';
class reqInformation extends StatefulWidget {
  @override
  _reqInformationState createState() => _reqInformationState();
}

class _reqInformationState extends State<reqInformation> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  alertinput(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
            width: 130,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () => debugPrint("cancel"),
                        child: Image.asset(
                          'image/cancel.png',
                          height: 16,
                          width: 17,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Enter the PIN code that has bean sent to you via SMS",
                  ),
                  //this is plagin
                  VerificationCodeInput(
                    keyboardType: TextInputType.number,
                    length: 4,
                    onCompleted: (String value) {
                      print(value);
                    },
                  ),
                  Container(
                    width: 270,
                    padding: EdgeInsets.all(6),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/verifyuser');
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "NAME",
                            style:
                            TextStyle(color: Color(0Xff2f4fa1), fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 15),
                      child: TextField(
                        controller: null,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Owner name",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "PHONE",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 15),
                      child: TextField(
                        controller: null,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "+20xxxxxxxxxxx",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                            suffixText: "Verify",
                            suffixStyle: TextStyle(color: Color(0xffb7b7b7))),
                      ),
                    ),
                    Container(
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
                                  )):
                              Text("Schedule a visit",
                                  style: TextStyle(
                                    color: Color(0xff5c5c5c),
                                      fontSize: 15
                                  )),
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
                              ):
                              Text(
                                "Priority Service",
                                style: TextStyle(
                                  color: Color(0xff5c5c5c),
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 79,
                      padding: EdgeInsets.all(14),
                      child: ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundColor: Color(0xff434343),
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xff5c5c5c),
                            ),
                          ),
                          title: Text(
                            "Set your address on the map for faster visit",
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 310,
                      height: 50,
                      child: RaisedButton(
                          disabledColor: Color(0xffdedede),
                          onPressed: () => alertinput(context),
                          child: Text(
                            "Next",
                            style:
                            TextStyle(fontSize: 20, color: Color(0xffb4b4b4)),
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
