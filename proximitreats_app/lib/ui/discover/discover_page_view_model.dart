import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats/services/shops_service.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

@injectable
class DiscoverPageViewModel with ChangeNotifier {
  final ShopsService _shopsService;
  List<Shop> shops = [];
  bool isLoading = false;
  final TextEditingController searchController = TextEditingController();

  DiscoverPageViewModel(this._shopsService) {
    load();
  }

  Future<void> load() async {
    isLoading = true;
    notifyListeners();

    final shops = await _shopsService.getAll();
    this.shops = shops;

    isLoading = false;
    notifyListeners();
  }
}
