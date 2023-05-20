// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/notification.dart';
import 'package:flutter_application_1/pages/workorder.dart';
import 'package:animate_do/animate_do.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  const DashboardPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Maintenance Portal",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 1000),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WorkOrder(
                              username: 'Username',
                            )),
                  );
                },
                child: const DashboardCard(
                  title: 'Work Orders',
                  count: 10,
                  icon: Icons.work,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            FadeInDown(
              duration: const Duration(milliseconds: 1000),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage(
                              username: 'Username',
                            )),
                  );
                },
                child: const DashboardCard(
                  title: 'Notifications',
                  count: 5,
                  icon: Icons.notifications,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;

  const DashboardCard({
    required this.title,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Colors.red,
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Count: $count',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
