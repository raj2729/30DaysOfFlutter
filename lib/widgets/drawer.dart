import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/68227858?s=400&u=b121aed5d43375771b924c3b79ac6f278d4cfd9d&v=4";

    return Drawer(
      child:Container(
        color:Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                // color: Colors.white54
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text("Raj Sanghavi",style: TextStyle(color: Colors.white),),
                accountEmail: Text("rajsanghavi9@gmail.com",style: TextStyle(color: Colors.white),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/68227858?s=400&u=b121aed5d43375771b924c3b79ac6f278d4cfd9d&v=4"),
                ),
              ),
            ),
            ListTile(
              
              leading: Icon(
                CupertinoIcons.home,
                color:Colors.white,

              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style:TextStyle(
                  color:Colors.white,
                ),

              ),
            ),
            ListTile(
              
              leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.white,
                // size: 30,

              ),
              title: Text(
                "My Profile",
                textScaleFactor: 1.5,
                style:TextStyle(
                  color:Colors.white,
                ),

              ),
            ),
            ListTile(
              
              leading: Icon(
                CupertinoIcons.mail,
                color:Colors.white,

              ),
              title: Text(
                "Email",
                textScaleFactor: 1.5,
                style:TextStyle(
                  color:Colors.white,
                ),

              ),
            ),
          ],
          
        ),
      ),
    );
  }
}
