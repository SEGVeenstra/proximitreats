import 'package:injectable/injectable.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

@singleton
class ShopsService {
  final Client _client;

  ShopsService(this._client);

  /// Searches for shops based on the provided query and language.
  Future<List<Shop>> searchShops(
    String query, {
    String language = 'english',
  }) async {
    try {
      return await _client.shops.search(query, language: language);
    } catch (e) {
      // TODO: handle some nice logging here
      return [];
    }
  }

  Future<List<Shop>> getAll() async {
    try {
      return await _client.shops.getAll();
    } catch (e) {
      return [];
    }
  }
}
