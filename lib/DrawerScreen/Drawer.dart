import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/close.png"),
              size: 25.0,color: Colors.black,),
            title: Row(
              children: <Widget>[
                Image(image: AssetImage("images/imageDrawer/logo.png"),
                  width: 120,height: 75,),
              ],
            ),
          ),

          ListTile(
              onTap: () {},
              leading: ImageIcon(AssetImage("images/imageDrawer/home.png"),
                size: 25.0,color: Colors.black,),
              title: new Text("Home",style: TextStyle(fontSize: 18,
                  color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: Icon(Icons.person_outline,size: 25,color: Colors.black,),
            title: new Text("My Profile",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/pet.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("My Pets",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/history.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("History",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/offers.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("Offers",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/request.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("Request Service",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            title:new Container(
              padding: EdgeInsets.only(left: 8,right: 8),
              height: 1.0, width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade400,
            ),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/terms.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("Terms and Conditions",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/help.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("Help",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),

          ListTile(
            onTap: () {},
            leading: ImageIcon(AssetImage("images/imageDrawer/contact.png"),
              size: 25.0,color: Colors.black,),
            title: new Text("Contact us",style: TextStyle(fontSize: 18,
                color: Colors.black),),
          ),
        ],
      ),
    );
  }



}
