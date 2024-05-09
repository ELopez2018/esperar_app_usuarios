
import 'package:esperar_users/domain/entities/user/user.dart';

abstract class UserInterface {
  Future<User?> getUserByToken();
  Future<User?> getUserByUsername(String username);
  Future<User> updateUser(User user);
}
