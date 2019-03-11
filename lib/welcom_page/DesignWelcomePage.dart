import 'package:flutter/material.dart';
import 'Functions.dart';
import '../DrawerScreen/Drawer.dart';
import '../Discription/DescriptionWithImage.dart';
class DesignWelcome extends StatefulWidget {
  @override
  _DesignWelcomeState createState() => _DesignWelcomeState();
}
class _DesignWelcomeState extends State<DesignWelcome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: new DrawerScreen(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16,right: 16,top: 16),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:48.0),
                            child: Text(
                              "Welcome",style:TextStyle(fontSize: 30,
                                color:Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16,right: 16,top: 24),
                    child: new RaisedButton.icon(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: (){},
                        icon: Icon(Icons.close,color: Colors.grey.shade600,),
                        label: Text("Cancel",style: TextStyle(color: Colors.grey),)
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: new Container(
                    padding: EdgeInsets.only(top: 30),
                    child:new Column(
                      children: <Widget>[

                        //>>>>>>>>>>>>>>>>>>>>> Start Design <<<<<<<<<<<<<<<<<<<<<<



                        //>>>>>>>>>>>>>>>>>>>>> Choose Species <<<<<<<<<<<<<<<<<<<<<<

                        Container(
                          padding: EdgeInsets.only(left: 16,bottom: 8),
                          alignment: Alignment.centerLeft,
                          child: new Text("Choose Species",style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 16),
                          child: new Row(
                            children: <Widget>[
                              AnimatedContainer(duration: Duration(milliseconds: 650),
                                width: MediaQuery.of(context).size.width/dividing,
                                height: MediaQuery.of(context).size.width/dividing,
                              child: InkWell(onTap:(){setState(() {onDogSelected();});},
                                child: Card(color: cardColorDog, child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(urlImageDog,
                                      height: 0.4*(MediaQuery.of(context).size.width/dividing),
                                      width: 0.4*(MediaQuery.of(context).size.width/dividing),),
                                    Padding(padding: const EdgeInsets.all(5.0),
                                      child: Text("Dog", style: TextStyle(
                                          fontWeight: FontWeight.bold, color: cardColorTextDog,
                                          fontSize: (MediaQuery.of(context).size.width/dividing)/8),),
                                    )],),),),
                              ),
                              AnimatedContainer(duration: Duration(milliseconds: 650),
                                width: MediaQuery.of(context).size.width/dividing,
                                height: MediaQuery.of(context).size.width/dividing,
                                child: InkWell(onTap:(){setState(() {onCatSelected();});},
                                  child: Card(color: cardColorCat, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(urlImageCat,
                                        height: 0.4*(MediaQuery.of(context).size.width/dividing),
                                        width: 0.4*(MediaQuery.of(context).size.width/dividing),),
                                      Padding(padding: const EdgeInsets.all(5.0),
                                        child: Text("Cat", style: TextStyle(
                                            fontWeight: FontWeight.bold, color: cardColorTextCat,
                                            fontSize: (MediaQuery.of(context).size.width/dividing)/8),),
                                      )],),),),
                              ),
                              AnimatedContainer(duration: Duration(milliseconds: 650),
                                width: MediaQuery.of(context).size.width/dividing,
                                height: MediaQuery.of(context).size.width/dividing,
                                child: InkWell(onTap:(){},
                                  child: Card(color: cardColor, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(urlImageOther,color: Colors.blue.shade900,
                                        height: 0.4*(MediaQuery.of(context).size.width/dividing),
                                        width: 0.4*(MediaQuery.of(context).size.width/dividing),),
                                      Padding(padding: const EdgeInsets.all(5.0),
                                        child: Text("Other", style: TextStyle(
                                            fontWeight: FontWeight.bold, color: cardColorText,
                                            fontSize: (MediaQuery.of(context).size.width/dividing)/8),),
                                      )],),),),
                              )
                            ],
                          ),
                        ),

                        //>>>>>>>>>>>>>>>>>>>>> what pet needed <<<<<<<<<<<<<<<<<<<<<<

                        Container(
                          padding: EdgeInsets.only(top:16,left: 16,bottom: 4),
                          alignment: Alignment.centerLeft,
                          child: new Text("What does your Pet need today?",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold,),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:16),
                          child: new Row(
                            children: <Widget>[
                              AnimatedContainer(duration: Duration(milliseconds: 650),
                                width: MediaQuery.of(context).size.width/dividing,
                                height: MediaQuery.of(context).size.width/dividing,
                                child: InkWell(onTap:(){setState(() {onHealthTap();});},
                                  child: Card(color: cardColorHealth, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(urlImageHealth,
                                        height: 0.4*MediaQuery.of(context).size.width/dividing,
                                        width: 0.4*MediaQuery.of(context).size.width/dividing,),
                                      Padding(padding: const EdgeInsets.all(5.0),
                                        child: Text("Healthcare", style: TextStyle(
                                            fontWeight: FontWeight.bold, color: cardColorTextHealth,
                                            fontSize: (MediaQuery.of(context).size.width/dividing)/9),),
                                      )],),),),
                              ),
                              AnimatedContainer(duration: Duration(milliseconds: 500),
                                width: MediaQuery.of(context).size.width/dividing,
                                height: MediaQuery.of(context).size.width/dividing,
                                child: InkWell(onTap:(){setState(() {onCleanTap();});},
                                  child: Card(color: cardColorClean, child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(urlImageClean,
                                        height: 0.4*MediaQuery.of(context).size.width/dividing,
                                        width: 0.4*MediaQuery.of(context).size.width/dividing,),
                                      Padding(padding: const EdgeInsets.all(5.0),
                                        child: Text("Grooming", style: TextStyle(
                                            fontWeight: FontWeight.bold, color: cardColorTextClean,
                                            fontSize: MediaQuery.of(context).size.width/dividing/9),),
                                      )],),),),
                              ),
                            ],
                          ),
                        ),
                        myContainer,
                      ],
                    )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
              width: MediaQuery.of(context).size.width,height: 60,
              child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/Discription');
                  },
                  child: Text("Next",style: TextStyle(color: Colors.black),)
              ),
            )
          ],
        ),

      ),
    );
  }
}

