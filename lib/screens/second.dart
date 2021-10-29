import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String id = 'second';
  final String screenName;

  const SecondScreen({Key? key, required this.screenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
