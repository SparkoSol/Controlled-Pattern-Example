import 'package:controlled_pattern_example/src/components/counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:reusables/reusables.dart';

class CounterPage extends ControlledWidget<CounterController> {
  const CounterPage({
    Key? key,
    required this.counterController,
  }) : super(key: key, controller: counterController);

  final CounterController counterController;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> with ControlledStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.controller.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
