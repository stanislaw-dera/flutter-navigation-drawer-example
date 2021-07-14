import 'package:flutter/material.dart';
import 'package:navigation_drawer/fragments/first_page.dart';
import 'package:navigation_drawer/navigation/navigation.dart';

class NavWrapper extends StatefulWidget {
  @override
  _NavWrapperState createState() => _NavWrapperState();
}

class _NavWrapperState extends State<NavWrapper> {

  Widget currentBody = FirstPage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: currentBody,

      drawer: Drawer(

        child: Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,

            itemCount: navigationItems.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(navigationItems[index].name),
                leading: Icon(navigationItems[index].icon),
                onTap: () {
                  setState(() => currentBody = navigationItems[index].widget);
                  Navigator.pop(context);
                },
              );
            },

          ),
        ),
      ),
    );
  }
}
