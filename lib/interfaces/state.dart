//bloc state
abstract class State<T> {
  List<T> entries;

  State(this.entries);
}

class InitialState<T> extends State<T> {
  InitialState() : super([]);
}

class SuccessState<T> extends State<T> {
  SuccessState(List<T> entries) : super(entries);
}
