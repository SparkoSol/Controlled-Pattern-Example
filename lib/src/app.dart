import 'package:controlled_pattern_example/src/base/theme.dart';
import 'package:controlled_pattern_example/src/components/counter/counter_controller.dart';
import 'package:controlled_pattern_example/src/components/counter/counter_page.dart';
import 'package:flutter/material.dart';

class ControlledPatternApp extends StatefulWidget {
  const ControlledPatternApp({Key? key}) : super(key: key);

  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Initialization
  }

  @override
  State<ControlledPatternApp> createState() => _ControlledPatternAppState();
}

class _ControlledPatternAppState extends State<ControlledPatternApp> {
  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controlled Pattern',
      theme: AppTheme.data,
      home: CounterPage(counterController: _controller),
    );
  }
}
