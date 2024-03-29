import 'package:bloc_infinite_list/util/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver{

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    loge('onCreate : $bloc');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    loge('onClose : $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    loge('onError : $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    loge('onTransition : $transition');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    loge('onChange : $change');
  }
}