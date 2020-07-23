abstract class ILocalStorage<T> {
  Future<T> get(dynamic id);
  Future<void> delete(dynamic id);
  Future<void> add(T object);
}
