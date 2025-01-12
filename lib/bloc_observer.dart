import 'package:bloc/bloc.dart';
import 'dart:developer' as dev;

class MyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    dev.log(
      '${bloc.runtimeType} -> $event',
      name: 'Bloc Event',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dev.log(
      '',
      name: 'Bloc Error',
      error: error,
      stackTrace: stackTrace,
      level: 1,
      time: DateTime.now(),
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Bloc) return;
    dev.log(
      '${bloc.runtimeType} -> $change',
      name: 'Bloc State',
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    dev.log(
      '${bloc.runtimeType} -> $transition',
      name: 'Bloc Transition',
    );
  }
}
