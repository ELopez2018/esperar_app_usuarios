import 'package:esperar_users/domain/entities/user/user.dart';
import 'package:esperar_users/domain/repositories/local_storage.dart';
import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  DrawerProvider({
    required this.localStorageInterface,
  });

  final LocalStorageInterface localStorageInterface;
  User? user;

  Future init() async {
    user = await localStorageInterface.getUser();
    notifyListeners();
  }
}
