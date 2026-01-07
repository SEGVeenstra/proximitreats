import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:proximitreats/services/shops_service.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

final _log = Logger('DiscoverPageViewModel');

@injectable
class DiscoverPageViewModel with ChangeNotifier {
  final ShopsService _shopsService;
  List<Shop> shops = [];
  bool isLoading = false;
  final TextEditingController searchController = TextEditingController();

  DiscoverPageViewModel(this._shopsService) {
    _log.fine('Initialized DiscoverPageViewModel');
    load();
  }

  Future<void> load() async {
    _log.fine('Loading shops in DiscoverPageViewModel');
    isLoading = true;
    notifyListeners();

    final shops = await _shopsService.getAll();
    this.shops = shops;

    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _log.fine('Disposing DiscoverPageViewModel');
    searchController.dispose();
    super.dispose();
  }
}
