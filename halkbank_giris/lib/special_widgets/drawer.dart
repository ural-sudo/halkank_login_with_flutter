
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  String language = "English";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
            DrawerHeader(
              child:Row(
                children: [
                  Icon(Icons.person_pin,size: 70,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Ahmet Erçin URAL",style: TextStyle(fontSize: 16.0,color: Colors.blue,fontStyle: FontStyle.italic),),
                  )
                ],
              )
            ),
            SizedBox(
              height: 1,
              width: 250,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.security,size: 27,),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Güvenlik Metni Açıldı");
                        },
                          child: Text("Güvenlik",style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.warning,size: 27,),
                      ),
                      GestureDetector(
                          onTap: (){
                            print("Yasal Uyarı Açıldı");
                          },
                          child: Text("Yasal Uyarı",style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.info,size: 27,),
                      ),
                      GestureDetector(
                          onTap: (){
                            print("KVKK Açıldı");
                          },
                          child: Text("KVKK Bilgilendirme",style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.cut_sharp,size: 27,),
                      ),
                      GestureDetector(
                          onTap: (){
                            print("Planlı Kesintiler");
                          },
                          child: Text("Planlı Kesintiler",style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),

              ],
            ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: SizedBox(
              height: 1,
              width: 250,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: (){
                    if(language == "Turkish"){
                      language= "English";
                    }else{
                      language = "Turkish";
                    }
                    setState((){});
                  },
                  child: Text("$language"),
              )
            ],
          )
        ],
      ),
    );
  }
}
