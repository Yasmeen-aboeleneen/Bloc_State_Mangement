import 'package:counter_app/Widgets/buttons_widget.dart';
import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter value is:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              if (state is CounterInitial) {
                return const Text(
                  '0',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              } else if (state is CounterValueChangedState) {
                return Text(
                  state.counter.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                );
              } else {
                return const SizedBox();
              }
            }),
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
