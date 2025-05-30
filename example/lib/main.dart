import 'package:flutter/material.dart';
import 'package:awesome_icons/awesome_icons.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Icons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IconDemoPage(),
    );
  }
}

class IconDemoPage extends StatelessWidget {
  const IconDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awesome Icons Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            AwesomeIcon(icon: AwesomeIcons.activityBroken, size: 40),
            AwesomeIcon(icon: AwesomeIcons.activityLinear, size: 40),
            AwesomeIcon(icon: AwesomeIcons.activityOutline, size: 40),
            AwesomeIcon(icon: AwesomeIcons.activityBulk, size: 40),
            AwesomeIcon(icon: AwesomeIcons.activityBold, size: 40),
            AwesomeIcon(icon: AwesomeIcons.activityTwotone, size: 40),
          ],
        ),
      ),
    );
  }
}
