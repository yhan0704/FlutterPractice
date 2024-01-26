import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_app/cubits/background_color/background_color_cubit.dart';
import 'package:my_first_app/cubits/counter/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (context) => CounterCubit(),
          ),
          BlocProvider<BackgroundColorCubit>(
            create: (context) => BackgroundColorCubit(
                counterCubit: context.read<CounterCubit>()),
          ),
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: CounterBody(),
          ),
        ));
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<BackgroundColorCubit>().state.backgroundColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().increaseCounter(),
              child: Text(
                  "Counter ${context.watch<CounterCubit>().state.counter}"),
            ),
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().resetCounter(),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
