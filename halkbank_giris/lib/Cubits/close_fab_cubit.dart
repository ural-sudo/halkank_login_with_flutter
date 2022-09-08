

import 'package:flutter_bloc/flutter_bloc.dart';

class CloseFabCubit extends Cubit<bool>{
  CloseFabCubit() : super(false);

  void changeToFalse (){

    bool sonuc = false;
    emit(sonuc);
  }

  void  changeToTrue(){

    bool sonuc = true;
    emit(sonuc);
  }

}

