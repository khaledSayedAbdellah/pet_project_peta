import 'package:flutter/material.dart';
import './welcom_page/DesignWelcomePage.dart';
import './Health care/healthCare.dart'as Helth;
import './card details/cardDetails.dart'as carddetails;
import './verify user/verify user.dart'as verifyuser;
import './Discription/DescriptionWithImage.dart'as Discription;
import './requestiformation/RequstInformation.dart'as requestiformation;
import './welcom_page/DesignWelcomePage.dart'as welcome;
main(){
  runApp(MaterialApp(
    title: "pet",
    home: DesignWelcome(),
      routes: <String, WidgetBuilder>{
        '/welcome': (context) => welcome.DesignWelcome(),
        '/Helth': (context) => Helth.helthCare(),
        '/carddetails': (context) => carddetails.cardDetails(),
        '/verifyuser': (context) => verifyuser.verifyUser(),
        '/Discription': (context) => Discription.DescriptionWithImage(),
        '/requestiformation': (context) => requestiformation.reqInformation(),
      }
  ));
}