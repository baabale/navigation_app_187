import 'package:flutter/material.dart';
import 'package:navigation_app/screens/second.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/';
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  final String name = 'Home -> Second Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation and Routing'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Dice Winner'),
                    content: Text('Abdi is the winner'),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel'))
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(
                  screenName: name,
                ),
              ),
            );
            // Navigator.pushNamed(context, SecondScreen.id);
          },
          child: const Text(
            'Go to 2nd Scren',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
