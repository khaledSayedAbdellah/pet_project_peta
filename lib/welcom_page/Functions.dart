import 'package:flutter/material.dart';
import 'SelectServices.dart';

String urlImageDog = "images/Dog.png";
String urlImageCat = "images/Cat.png";
String urlImageHealth = "images/Health.png";
String urlImageClean = "images/Clean.png";
String urlImageOther = "images/other.png";

double dividing = 3.5;
Color cardColorDog;
Color cardColorCat;
Color cardColorHealth;
Color cardColorClean;
Color cardColor;
Color cardColorTextDog;
Color cardColorTextCat;
Color cardColorTextHealth;
Color cardColorTextClean;
Color cardColorText;

onDogSelected() {
  if (cardColorDog != Color(0xFF2f4fa1)) {
    cardColorDog = Color(0xFF2f4fa1);
    cardColorTextDog = Colors.white;
  } else {
    cardColorDog = Colors.white;
    cardColorTextDog = Colors.black;
  }
//    if(cardColorCat==Color(0xFF2f4fa1)){
//      onCatSelected();
}

onCatSelected() {
  if (cardColorCat != Color(0xFF2f4fa1)) {
    cardColorCat = Color(0xFF2f4fa1);
    cardColorTextCat = Colors.white;
  } else {
    cardColorCat = Colors.white;
    cardColorTextCat = Colors.black;
  }
//  if(cardColorDog==Color(0xFF2f4fa1)){
//    onDogSelected();
//  }
}

onHealthTap() {
  if (cardColorClean != Color(0xFF2f4fa1)) {
    if (dividing == 3.5)
      dividing = 5;
    else
      dividing = 3.5;
  }
  if (cardColorHealth != Color(0xFF2f4fa1)) {
    cardColorHealth = Color(0xFF2f4fa1);
    cardColorTextHealth = Colors.white;

    setMyContainerHealth();

    cardColorClean = Colors.white;
    cardColorTextClean = Colors.black;
  } else {
    cardColorHealth = Colors.white;
    cardColorTextHealth = Colors.black;
    myContainer = new Container();
  }
}

onCleanTap() {
  if (cardColorHealth != Color(0xFF2f4fa1)) {
    if (dividing == 3.5)
      dividing = 5;
    else
      dividing = 3.5;
  }
  if (cardColorClean != Color(0xFF2f4fa1)) {
    cardColorClean = Color(0xFF2f4fa1);
    cardColorTextClean = Colors.white;

    setMyContainerClean();

    cardColorHealth = Colors.white;
    cardColorTextHealth = Colors.black;
  } else {
    cardColorClean = Colors.white;
    cardColorTextClean = Colors.black;
    myContainer = new Container();
  }
}

Container myContainer = new Container();

setMyContainerHealth() {
  myContainer = new Container(
    child: new Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new Text(
                "Choose your servise",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        new Row(
          children: <Widget>[
            new Service(
              name: "CheckUp",
            ),
            new Service(
              name: "Vaccine",
            ),
          ],
        ),
        new Row(
          children: <Widget>[
            new Service(
              name: "Deworming",
            ),
            new Service(
              name: "anal sac evacuation",
            ),
          ],
        ),
        new Row(
          children: <Widget>[
            new Service(
              name: "insectiding",
            ),
            new Service(
              name: "veterinary drug slot",
            ),
          ],
        ),
        new Row(
          children: <Widget>[
            new Service(
              name: "Human drug slot",
            ),
            new Service(
              name: "X-ray / Sonar",
            ),
          ],
        ),
        new Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16),
              child: new RaisedButton.icon(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey.shade600,
                  ),
                  label: Text(
                    "Other",
                    style: TextStyle(color: Colors.black54),
                  )),
            )
          ],
        ),
      ],
    ),
  );
}

setMyContainerClean() {
  myContainer = new Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 16, bottom: 8),
                child: new Text(
                  "What is your Pet Size?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ],
        ),
        new Container(
          padding: EdgeInsets.only(right: 16),
          child: new Text(
            "give an approximate value for your Pet size to help"
                " us estimate price.",
            style: TextStyle(fontSize: 14, color: Colors.black38),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0, top: 16),
          child: new Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: new Column(
                    children: <Widget>[
                      Image.asset(
                        "images/dog_size.png",
                        scale: 5,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: new Text("Small"),
                      ),
                      new Text("<5 kgs"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: new Column(
                    children: <Widget>[
                      Image.asset(
                        "images/dog_size.png",
                        scale: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: new Text("Medium"),
                      ),
                      new Text("<8 kgs"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: new Column(
                    children: <Widget>[
                      Image.asset(
                        "images/dog_size.png",
                        scale: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: new Text("Large"),
                      ),
                      new Text("<10 kgs"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
