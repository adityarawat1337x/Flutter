import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://images.pexels.com/photos/12666762/pexels-photo-12666762.png?cs=srgb&dl=pexels-dareus-white-12666762.jpg&fm=jpg";
    return Drawer(
      child: Container(
          color: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 99, 108, 248))
              .primary,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: const UserAccountsDrawerHeader(
                      margin: EdgeInsets.all(0),
                      accountEmail: Text("rkrawat98766@gmail.com"),
                      accountName: Text("Aditya Rawat"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      ))),

              const ListTile(
                  leading: Icon(CupertinoIcons.home, color: Colors.white),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )),
              const ListTile(
                  leading:
                      Icon(CupertinoIcons.profile_circled, color: Colors.white),
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  )),
              const ListTile(
                  leading: Icon(CupertinoIcons.calendar, color: Colors.white),
                  title: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          )),
    );
  }
}
