import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageURL="https://static.toiimg.com/photo/msid-74623595/74623595.jpg?177122";
    return Drawer(
      
      child: ListView(
        children: [
        
          DrawerHeader(
            
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Pawaan"),
                accountEmail: Text("bharat@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageURL),),
              ))
        ],
      ),
    );
  }
}
