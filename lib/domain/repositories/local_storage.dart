
import 'package:esperar_users/domain/entities/user/user.dart';

abstract class LocalStorageInterface {
  Future setAccessToken(String value);
  Future<String?> getAccessToken();
  Future setUser(User user);
  Future<User?> getUser();
  Future clean();
}
