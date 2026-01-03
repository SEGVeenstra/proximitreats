import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';

@singleton
class UserService with ChangeNotifier {
  final FlutterAuthSessionManager _authSessionManager;

  UserService(this._authSessionManager) {
    // Listen to authentication state changes
    _authSessionManager.authInfoListenable.addListener(() {
      notifyListeners();
    });
  }

  bool get isVendor =>
      _authSessionManager.authInfo?.scopeNames.contains('vendor') ?? false;
}
