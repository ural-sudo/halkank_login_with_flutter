
import 'package:flutter/material.dart';

class KarekodFab extends StatefulWidget {
  const KarekodFab({Key? key}) : super(key: key);

  @override
  State<KarekodFab> createState() => _KarekodFabState();
}

class _KarekodFabState extends State<KarekodFab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
          child: Icon(Icons.qr_code_2_rounded),

      ),
    );
  }
}
