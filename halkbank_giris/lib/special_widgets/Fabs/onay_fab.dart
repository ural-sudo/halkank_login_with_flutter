import 'package:flutter/material.dart';


class OnayFab extends StatefulWidget {
  const OnayFab({Key? key}) : super(key: key);

  @override
  State<OnayFab> createState() => _OnayFabState();
}

class _OnayFabState extends State<OnayFab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
          child: Icon(Icons.open_in_new),
      ),
    );
  }
}
