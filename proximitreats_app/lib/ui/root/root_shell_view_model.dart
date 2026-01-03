import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats/services/user_service.dart';

@injectable
class RootShellViewModel with ChangeNotifier {
  RootShellViewModel(this._userService) {
    _userService.addListener(_onUserServiceChanged);
  }

  final UserService _userService;

  void _onUserServiceChanged() {
    notifyListeners();
  }

  bool get shouldShowMyShopsTab => _userService.isVendor;

  @override
  void dispose() {
    _userService.removeListener(_onUserServiceChanged);
    super.dispose();
  }
}
