import 'package:flutter/material.dart';

class PhoneFab extends StatefulWidget {
  const PhoneFab({Key? key}) : super(key: key);

  @override
  State<PhoneFab> createState() => _PhoneFabState();
}

class _PhoneFabState extends State<PhoneFab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
          child: Icon(Icons.phone_forwarded),
      ),
    );
  }
}
