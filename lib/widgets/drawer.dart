import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accountImage = "images/AyezaKhan.png";
    return Drawer(
      backgroundColor: Color(0xff02B29A),
      child: ListView(
        //padding: const EdgeInsets.all(0.0),
        children: const [
          DrawerHeader(
              // padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 126, 110),
            ),
            accountName: Text(
              "Marya Baloch",
              style: TextStyle(fontSize: 20.0),
            ),
            accountEmail: Text(
              "Maryabaloch7@gmail.com",
              style: TextStyle(fontSize: 17.0),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(accountImage),
            ),
          )),
          Divider(height: 0.1),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
              size: 32,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
              size: 32,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
              size: 32,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
              size: 32,
            ),
            title: Text(
              "Contact",
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.question,
              color: Colors.white,
              size: 32,
            ),
            title: Text(
              "Help",
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
