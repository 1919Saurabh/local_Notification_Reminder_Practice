import 'package:flutter/material.dart';

import '../Service/Notification_Service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Select Time'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Select Date'),
          ),
          ElevatedButton(
            onPressed: () => LocalNotification().showNotification(),
            child: const Text('Add Reminder'),
          ),
        ],
      ),
    );
  }
}
