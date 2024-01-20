import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'background_color_state.dart';

class BackgroundColorCubit extends Cubit<BackgroundColorState> {
  BackgroundColorCubit() : super(BackgroundColorState.initial());
}
