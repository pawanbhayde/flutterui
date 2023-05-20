import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/alertdialogue.dart';
import 'package:flutter_application_1/pages/dashboard.dart';
import 'package:flutter_application_1/pages/notification.dart';
import 'package:flutter_application_1/pages/workorder.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int selectedPage = 0;
  final pages = [
    const DashboardPage(username: "username"),
    const WorkOrder(
      username: 'Username',
    ),
    const NotificationPage(
      username: 'Username',
    ),
    LogoutAlertDialog()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          fixedColor: Colors.red,
          unselectedItemColor: const Color(0xFF757575),
          onTap: (position) {
            setState(() {
              selectedPage = position;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: "Dashboard"),
            BottomNavigationBarItem(
                icon: Icon(Icons.work_history), label: "Work Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout")
          ]),
    );
  }
}
