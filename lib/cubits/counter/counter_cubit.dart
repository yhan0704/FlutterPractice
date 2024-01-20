import 'package:bloc/bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increaseCounter() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void resetCounter() {
    emit(state.copyWith(counter: 0));
  }
}
