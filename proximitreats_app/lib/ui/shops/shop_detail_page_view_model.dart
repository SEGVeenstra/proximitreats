import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/services/shops_service.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

final _log = Logger('ShopDetailPageViewModel');

@injectable
class ShopDetailPageViewModel with ChangeNotifier {
  final ShopsService _shopsService;
  final UuidValue shopId;

  Shop? shop;
  bool isLoading = false;
  String? error;

  ShopDetailPageViewModel(this._shopsService, @factoryParam this.shopId) {
    _log.fine('Initialized ShopDetailPageViewModel for shop: $shopId');
    load();
  }

  Future<void> load() async {
    _log.fine('Loading shop details for shop: $shopId');
    isLoading = true;
    error = null;
    notifyListeners();

    final shopResult = await _shopsService.getById(shopId);
    shopResult.when(
      (shop) {
        if (shop == null) {
          this.shop = null;
          error = t.shops.shopDetailPage.errors.shopNotFound;
        } else {
          this.shop = shop;
          error = null;
        }
      },
      (error) {
        shop = null;
        this.error = t.shops.shopDetailPage.errors.failedToLoad;
      },
    );
    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _log.fine('Disposing ShopDetailPageViewModel');
    super.dispose();
  }
}
