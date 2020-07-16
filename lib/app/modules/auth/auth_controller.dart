import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @observable
  String email = "";
  @observable
  String password = "";

  @action
  void setEmail(String _email) => email = _email;
  @action
  void setPassword(String _password) => password = _password;
  @action
  Future<bool> login() async {
    return false;
  }
}
