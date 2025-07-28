import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';
import '../bloc/counter/counter_states.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Screen')),
      body: Column(
        children: [
          // BlocBuilder<CounterBloc, CounterState>(
          //   builder: (context, state) {
          //     print('build');
          //     return Center(
          //       child: Text(
          //         state.counter.toString(),
          //         style: TextStyle(fontSize: 60),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
