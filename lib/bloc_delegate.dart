import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as getx;

import 'model/util.dart';

class CustomerBlocDelegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
    debugPrint('BlocDelegate -> OnError: $bloc  ++ $error ++ $stackTrace');
    Util.showSnackBar('Error', error.toString()) ;
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
    debugPrint('BlocDelegate -> onEvent: $bloc ++ $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    debugPrint('BlocDelegate -> onTransition: $bloc ++ $transition');
  }



}

