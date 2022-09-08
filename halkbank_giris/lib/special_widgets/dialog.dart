import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.bottomCenter,
      title: Icon(Icons.cancel,size: 30,),
      content: Text("Müşteri/T.C Kimlik numaranızı veya Dijital parolanızı yanlış girdiniz. Lütfen kontrol ederek tekrar deneyiniz",),
      actions: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Tamam",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 17),)
          ),
        )
      ],
    );
  }
}
