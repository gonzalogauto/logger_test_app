import 'package:bloc/bloc.dart';
import 'package:logger_test_app/magic/magic.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() {
    final newState = state - 1;
    MagicRepo.doMagic(newState);
    emit(newState);
  }
}
