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
            AwesomeIconsBold(icon: AwesomeIcons.helpHeartAddBold, size: 15, fill: Colors.blue,),
            AwesomeIconsBulk(icon: AwesomeIcons.helpHeartAddBulk, size: 15, colors: [Colors.blue, Colors.blue.shade100],),
            AwesomeIconsLinear(icon: AwesomeIcons.helpHeartAddLinear, size: 15, fill: Colors.blue, strokeColor: Colors.black,),
            AwesomeIconsOutline(icon: AwesomeIcons.helpHeartAddBold, size: 15, strokeColor: Colors.blue,),
            AwesomeIconsBroken(icon: AwesomeIcons.helpHeartAddBold, size: 15, fill: Colors.blue, strokeColor: Colors.black, strokeWidth: .7,),
            AwesomeIconsTwotone(icon: AwesomeIcons.helpHeartAddBold, size: 15, strokeColor: Colors.black, strokeWidth: .7,),
          ],
        ),
      ),
    );
  }
}
