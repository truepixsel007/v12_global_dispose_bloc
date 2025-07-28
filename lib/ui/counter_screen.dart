import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';
import '../bloc/counter/counter_events.dart';
import '../bloc/counter/counter_states.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late CounterBloc _counterBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counterBloc = CounterBloc();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _counterBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild 123');
    return BlocProvider(
      create: (_) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(title: Text('Counter Example')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Next')),

            SizedBox(height: 30),

            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                print('build');
                return Center(
                  child: Text(
                    state.counter.toString(),
                    style: TextStyle(fontSize: 60),
                  ),
                );
              },
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  buildWhen: (current, provide) => false,
                  builder: (context, state) {
                    print('build');
                    return ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(IncrementCounter());
                      },
                      child: Text('Increament'),
                    );
                  },
                ),

                SizedBox(width: 20),

                BlocBuilder<CounterBloc, CounterState>(
                  buildWhen: (current, provide) => false,
                  builder: (context, state) {
                    print('build');
                    return ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(DecrementCounter());
                      },
                      child: Text('Decreament'),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
