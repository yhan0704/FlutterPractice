import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/cubits/counter/counter_cubit.dart';

part 'background_color_state.dart';

class BackgroundColorCubit extends Cubit<BackgroundColorState> {
  late final StreamSubscription colorSubscription;
  final CounterCubit counterCubit;
  BackgroundColorCubit({required this.counterCubit})
      : super(BackgroundColorState.initial()) {
    colorSubscription = counterCubit.stream.listen((CounterState counterState) {
      if (counterState.counter % 2 == 0) {
        emit(state.copyWith(backgroundColor: Colors.yellow));
      } else {
        emit(state.copyWith(backgroundColor: Colors.black));
      }
    });
  }

  @override
  Future<void> close() {
    colorSubscription.cancel();
    return super.close();
  }
}
