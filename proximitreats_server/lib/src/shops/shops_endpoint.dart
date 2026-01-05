import 'package:proximitreats_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ShopsEndpoint extends Endpoint {
  /// Searches for shops based on the provided query and language.
  /// language is used to determine the text search configuration in the database.
  /// Defaults to 'english'.
  Future<List<Shop>> search(
    Session session,
    String query, {
    String language = 'english',
  }) async {
    if (query.trim().isEmpty) return [];

    // We pass the language parameter into the SQL
    var sql = '''
    SELECT * FROM shops 
    WHERE to_tsvector(@lang::regconfig, name || ' ' || description) 
    @@ websearch_to_tsquery(@lang::regconfig, @query)
    ORDER BY ts_rank(to_tsvector(@lang::regconfig, name || ' ' || description), websearch_to_tsquery(@lang::regconfig, @query)) DESC
  ''';

    final queryParams = QueryParameters.named(
      {
        'query': query,
        'lang': language,
      },
    );

    var result = await session.db.unsafeQuery(
      sql,
      parameters: queryParams,
    );

    return result.map((row) => Shop.fromJson(row[0])).toList();
  }
}
