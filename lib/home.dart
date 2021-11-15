import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:package_mobx_flutter_counter/store/counter_store.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Observer(
            builder: (_) => Text(
              "${counter.count}",
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => counter.increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () => counter.dicrement(),
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            )
          ],
        ));
  }
}
