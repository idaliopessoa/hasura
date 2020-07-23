import 'package:hasura/app/interfaces/local_storage_interface.dart';
import 'package:hive/hive.dart';

class LocalStorageService<T> implements ILocalStorage<T> {
  final Box _box;

  LocalStorageService(this._box);

  @override
  Future<T> get(dynamic id) async {
    if (this.boxIsClosed) {
      return null;
    }

    return this._box.get(id);
  }

  @override
  Future<void> add(T object) async {
    if (this.boxIsClosed) {
      return;
    }

    await this._box.add(object);
  }

  @override
  Future<void> delete(dynamic id) async {
    if (this.boxIsClosed) {
      return null;
    }

    return this._box.deleteAt(id);
  }

  bool get boxIsClosed => !(this._box?.isOpen ?? false);
}
