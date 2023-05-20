import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class WorkOrder extends StatelessWidget {
  final String username;
  const WorkOrder({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            const SizedBox(width: 8.0),
            Text(
              username,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return FadeInDown(
                duration: const Duration(milliseconds: 1000),
                child: ListTile(
                  title: Text(
                    'Order $index',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Description of Order $index'),
                ));
          },
        ),
      ),
    );
  }
}
