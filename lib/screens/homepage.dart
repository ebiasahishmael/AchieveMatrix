import 'package:flutter/material.dart';
import 'package:metaverse/screens/account.dart';
import 'package:metaverse/screens/activities.dart';
import 'package:metaverse/screens/home.dart';
import 'package:metaverse/screens/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  static final List<Widget> bodyScreens = <Widget>[
    const HomeSecondPage(),
    const Notifications(),
    const Activities(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.teal,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            'AchieveMatrix',
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size(50, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: const TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color(0x00acacac),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) => setState(
          () {
            _currentIndex = index;
          },
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_rounded),
            label: "Activities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
