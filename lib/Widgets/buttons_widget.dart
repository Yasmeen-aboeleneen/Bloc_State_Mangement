import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          height: 5,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecreamentEvent());
          },
          child: const Icon(Icons.remove),
        )
      ],
    );
  }
}
