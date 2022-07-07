import 'package:flutter/cupertino.dart';
import 'package:runrun/constants.dart';
import 'package:runrun/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'micacharrito',
      theme: CupertinoThemeData(
        primaryColor: primaryColor,
      ),
      home: Home(),
    );
  }
}
