import 'package:flutter/material.dart';
import '../requestiformation/RequstInformation.dart';
class DescriptionWithImage extends StatefulWidget {
  @override
  _DescriptionWithImageState createState() => _DescriptionWithImageState();
}

class _DescriptionWithImageState extends State<DescriptionWithImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed('/requestiformation');
        },
        backgroundColor: Colors.green.shade700,
        child: Icon(Icons.check,size: 30,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.grey.shade200,

      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:24.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: new Container()),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/welcome', (Route<dynamic> route) => false);
                    },
                    child: new Image(image: AssetImage("images/imageDrawer/close.png"),
                      width: 35,height: 35,),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 16,bottom: 16),
                  child: new Text("Description",style: TextStyle(fontSize: 32,
                      fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 8),
              child: new Text("Descripe brifely what are the symptoms visible on your pet",
                style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                            border:Border.all(color: Colors.grey.shade300,width: 1.5),

                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text("Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet"
                                    "Descripe brifely what are the symptoms visible on your pet",
                                  style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            border:Border.all(color: Colors.grey.shade300,width: 2),
                                          ),
                                          padding: EdgeInsets.all(16),
                                          child: Icon(Icons.photo_camera,color: Colors.black54,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
//            InkWell(
//                onTap: (){},
//                child: new Image(image: AssetImage("images/descriptiontrue.png"),
//                  width: 50,height:50,)
//            ),
          ],
        ),
      ),
    );
  }
}
