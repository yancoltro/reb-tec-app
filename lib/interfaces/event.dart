//bloc event
abstract class Event<T> {}

class ListEvent<T> extends Event<T> {}

class InsertEvent<T> extends Event<T> {
  T t;

  InsertEvent(this.t);
}

class UpdateEvent<T> extends Event<T> {
  T t;

  UpdateEvent(this.t);
}

class DeleteEvent<T> extends Event<T> {
  T t;

  DeleteEvent(this.t);
}
