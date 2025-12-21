import 'package:injectable/injectable.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

@singleton
class HelloWorldRepository {
  final Client _client;

  HelloWorldRepository(this._client);

  Future<String> fetchHelloWorld(String name) async {
    final response = await _client.greeting.hello(name);
    return response.message;
  }
}
