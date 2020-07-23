import 'package:hasura/app/interfaces/local_storage_interface.dart';
import 'package:hasura/app/services/local_storage_service.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
