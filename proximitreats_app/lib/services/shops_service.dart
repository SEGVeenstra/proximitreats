import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

final _log = Logger('ShopsService');

@singleton
class ShopsService {
  final Client _client;

  ShopsService(this._client) {
    _log.fine('Initialized ShopsService');
  }

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
      _log.fine('Fetching all shops from API');
      return await _client.shops.getAll();
    } catch (e) {
      _log.severe('Failed to get all shops', e);
      return [];
    }
  }
}
