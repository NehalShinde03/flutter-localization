import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<S extends Object?> extends Cubit<S>{

  @override
  final BuildContext context;

  BaseCubit(this.context, super.initialState){
   Timer.run(onCreate);
  }

  @protected
  @mustCallSuper
  void onCreate(){}

}