
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:halkbank_giris/Cubits/close_fab_cubit.dart';
import 'package:halkbank_giris/special_widgets/Fabs/close_fab.dart';
import 'package:halkbank_giris/special_widgets/Fabs/karekod_fab.dart';
import 'package:halkbank_giris/special_widgets/Fabs/onay_fab.dart';
import 'package:halkbank_giris/special_widgets/Fabs/phone_fab.dart';
import 'package:halkbank_giris/special_widgets/Fabs/s%C4%B1ramatik_fab.dart';
import 'package:halkbank_giris/special_widgets/background.dart';
import 'package:halkbank_giris/special_widgets/clipper.dart';
import 'package:halkbank_giris/special_widgets/dialog.dart';
import 'package:halkbank_giris/special_widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> fabsAnimationValues;
//************************************************************
  var textController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool containerVisibilty = true;

  bool vsb =  false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(duration: Duration(milliseconds: 500),vsync:this);

    fabsAnimationValues = Tween(begin: 0.0,end: pi*2 ).animate(animationController)
    ..addListener(() {
      setState((){});
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    double height = ekranbilgisi.size.height;
    double width = ekranbilgisi.size.height;


    return SafeArea(
      top: true,
      left: true,
      bottom: true,
      right: true,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          toolbarHeight: 100.0,
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0.0,
          title: Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text("HALKBANK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily:"Cinzel"),),
                  ),
                ],
              )
          ),
        ),
        body:SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(
                  height: height,
                  width: width,
                  child: Background(
                    gradient: LinearGradient(
                        begin:Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.lightBlueAccent,Colors.blueAccent]
                    ),
                    child:Center(
                      child: Column(
                        children: [
                          Icon(Icons.person_pin,size: 70,),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("Hoş Geldiniz",style: TextStyle(color: Colors.white,fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text("Chris Jhonsen",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    TextButton(
                                        onPressed: (){
                                          setState((){
                                            containerVisibilty = true;
                                          });
                                        },
                                        child: Text("Bireysel",style: TextStyle(color: Colors.white,fontSize: 19),)
                                    ),
                                    containerVisibilty ? SizedBox(height:2,width: 70,child: Container(
                                      color: Colors.white,
                                    )) : Center(),
                                  ],
                                ),
                                Column(
                                  children: [
                                    TextButton(
                                        onPressed: (){
                                          setState((){
                                            containerVisibilty = false;
                                          });
                                        },
                                        child: Text("Kurumsal",style: TextStyle(color: Colors.white,fontSize: 19),)
                                    ),
                                    containerVisibilty ? Center() : SizedBox(height:2,width: 75,child: Container(
                                      color: Colors.white,
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Form(
                            key: formKey,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20,left: 20),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Icon(Icons.lock),
                                          ),
                                          Expanded(
                                              child: TextFormField(
                                                onChanged: (value){
                                                  bool sonuc = formKey.currentState!.validate();
                                                },
                                                controller:textController,
                                                style: TextStyle(
                                                  height: 1
                                                ),
                                                decoration: InputDecoration(
                                                  hintText: "Password",
                                                  fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide.none
                                                  )
                                                ),
                                                validator: (value){
                                                  if(value!.length >6){
                                                    setState((){
                                                      textController.text = "";
                                                    });
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext context){
                                                          return MyAlertDialog();
                                                        }
                                                    );
                                                  }
                                                },
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 98),
                                child: TextButton(
                                    onPressed: (){},
                                    child:Text("Dijital parola al / Unutum",style: TextStyle(color: Colors.white,fontSize: 12),)
                                ),
                              ),
                              TextButton(
                                  onPressed: (){},
                                  child:Text("Beni Unut",style: TextStyle(color: Colors.white,fontSize: 12),)
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: SizedBox(
                                  height:80,
                                  child: ClipPath(
                                    clipper: MyCustomClipper(),
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left:20,bottom: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocBuilder<CloseFabCubit,bool>(
                  builder: (context,sonuc){
                    return
                      sonuc ? Column(
                        children: [
                          Transform.rotate(
                              angle: fabsAnimationValues.value,
                              child: OnayFab()
                          ),
                          Transform.rotate(
                              angle:fabsAnimationValues.value,
                              child: PhoneFab()
                          ),
                          Transform.rotate(
                              angle: fabsAnimationValues.value,
                              child: KarekodFab()
                          ),
                          Transform.rotate(
                              angle: fabsAnimationValues.value,
                              child: SiramatikFab()
                          ),
                          FabClose()
                        ],
                      ): FloatingActionButton(
                      onPressed: (){
                        context.read<CloseFabCubit>().changeToTrue();
                        animationController.forward();
                      },
                      backgroundColor: Colors.deepOrangeAccent,
                      child: Icon(Icons.menu_open,color: Colors.white,),
                    );
                  },
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}


