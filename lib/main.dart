import 'package:bottom_app_bar/pages/Cart.dart';
import 'package:bottom_app_bar/pages/Dashboard.dart';
import 'package:bottom_app_bar/pages/Settings.dart';
import 'package:bottom_app_bar/pages/Users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyappState();
}

class MyappState extends State<MyApp> {
  int currentPage = 0;
  static const List<Widget> pages = [
    Dashboard(),
    Settings(),
    Users(),
    Cart(),
  ];
  final bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Dashboard();
                        currentPage = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentPage == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                                  currentPage == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Users();
                        currentPage = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentPage == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Person",
                          style: TextStyle(
                              color:
                                  currentPage == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Cart();
                        currentPage = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.ad_units,
                          color: currentPage == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Add List",
                          style: TextStyle(
                              color:
                              currentPage == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Settings();
                        currentPage = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentPage == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color:
                              currentPage == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
