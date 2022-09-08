
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halkbank_giris/Cubits/close_fab_cubit.dart';
class FabClose extends StatefulWidget {


  @override
  State<FabClose> createState() => _FabCloseState();
}

class _FabCloseState extends State<FabClose> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){
          context.read<CloseFabCubit>().changeToFalse();

        },
      backgroundColor: Colors.deepOrangeAccent,
      child: Icon(Icons.cancel,),
    );
  }
}
