import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats/services/shops_service.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

@injectable
class MyShopsPageViewModel extends ChangeNotifier {
  final ShopsService _shopsService;

  bool isLoading = false;
  List<Shop> shops = [];
  String? error;

  MyShopsPageViewModel(this._shopsService) {
    load();
  }

  Future<void> load() async {
    isLoading = true;
    error = null;
    notifyListeners();

    final result = await _shopsService.getMine();

    result.when(
      (success) {
        shops = success;
        error = null;
      },
      (err) {
        // TODO: Use localized error message
        error = 'Failed to load shops';
      },
    );

    isLoading = false;
    notifyListeners();
  }
}
