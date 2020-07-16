import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  @observable
  String email = "";
  @observable
  String password = "";
  @observable
  String confirmPassword = "";

  @action
  void setEmail(String _email) => email = _email;
  @action
  void setPassword(String _password) => password = _password;
  @action
  void setConfirmPassword(String _confirmPassword) =>
      confirmPassword = _confirmPassword;
  @action
  Future<bool> register() async {
    return true;
  }
}
