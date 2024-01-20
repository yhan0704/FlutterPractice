part of 'counter_cubit.dart';

class CounterState {
  final int counter;
  CounterState({
    this.counter = 0,
  });

  factory CounterState.initial() {
    return CounterState();
  }

  @override
  bool operator ==(covariant CounterState other) {
    if (identical(this, other)) return true;

    return other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;

  @override
  String toString() => 'CounterState(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
