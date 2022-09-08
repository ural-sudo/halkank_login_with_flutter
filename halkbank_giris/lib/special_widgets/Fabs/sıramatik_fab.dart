
import 'package:flutter/material.dart';

class SiramatikFab extends StatefulWidget {
  const SiramatikFab({Key? key}) : super(key: key);

  @override
  State<SiramatikFab> createState() => _SiramatikFabState();
}

class _SiramatikFabState extends State<SiramatikFab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
          child:Icon(Icons.qr_code_2_rounded),
      ),
    );
  }
}
