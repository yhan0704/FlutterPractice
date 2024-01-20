// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'background_color_cubit.dart';

class BackgroundColorState {
  final Color backgroundColor;
  BackgroundColorState({
    required this.backgroundColor,
  });

  BackgroundColorState copyWith({
    Color? backgroundColor,
  }) {
    return BackgroundColorState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  factory BackgroundColorState.initial() {
    return BackgroundColorState(backgroundColor: Colors.black);
  }

  @override
  bool operator ==(covariant BackgroundColorState other) {
    if (identical(this, other)) return true;

    return other.backgroundColor == backgroundColor;
  }

  @override
  int get hashCode => backgroundColor.hashCode;

  @override
  String toString() =>
      'BackgroundColorState(backgroundColor: $backgroundColor)';
}
