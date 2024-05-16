import 'package:counterapp/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  void _incrementCounter(context) {
    BlocProvider.of<CounterBloc>(context).add(CounterIncrementEvent());
  }

  void _decrementCounter(context) {
    BlocProvider.of<CounterBloc>(context).add(CounterDecrementEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          _decrementCounter(context);
                        },
                        icon: Icon(Icons.remove_circle_outline_outlined)),
                    IconButton(
                        onPressed: () {
                          _incrementCounter(context);
                        },
                        icon: Icon(Icons.add_circle_outline_outlined)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
