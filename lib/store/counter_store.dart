import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

final Counter counter = Counter();
class Counter = CounterStore with _$Counter;

abstract class CounterStore with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void dicrement() {
    count--;
  }
}

