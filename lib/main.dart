import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Gestures';

    return const MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ernest Gesture'),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // show snackbar on tap of child
      onTap: () {
        const snackBar =
        SnackBar(content: Text(" You have clicked on the Button"));

        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(snackBar);
      },
      // The tap button
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Text('Click Button'),
      ),
    );
  }
}
