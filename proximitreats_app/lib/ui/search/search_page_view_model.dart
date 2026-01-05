import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:proximitreats/services/shops_service.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

@injectable
class SearchPageViewModel with ChangeNotifier {
  final ShopsService _shopsService;
  List<Shop> shops = [];
  bool isLoading = false;
  final TextEditingController searchController = TextEditingController();

  SearchPageViewModel(this._shopsService);

  Future<void> search() async {
    isLoading = true;
    notifyListeners();

    final shops = await _shopsService.searchShops(searchController.text);
    this.shops = shops;

    isLoading = false;
    notifyListeners();
  }
}
