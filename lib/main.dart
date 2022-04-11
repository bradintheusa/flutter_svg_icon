import 'package:flutter/material.dart';

import 'svg_icon_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter SVG Icon Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const IconBoat(),
            Text('Here are some inline icons',
                style: Theme.of(context).textTheme.bodyText1),
            SvgPicture.string(
              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" width="100%" height="100%"><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="80" y="16" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="208" y="16" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="336" y="16" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="80" y="144" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="208" y="144" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="336" y="144" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="80" y="272" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="208" y="272" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="208" y="400" rx="8" ry="8"></rect><rect xmlns="http://www.w3.org/2000/svg" width="96" height="96" x="336" y="272" rx="8" ry="8"></rect></svg>',
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
