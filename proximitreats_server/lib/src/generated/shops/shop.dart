/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i2;
import 'package:proximitreats_server/src/generated/protocol.dart' as _i3;

abstract class Shop
    implements _i1.TableRow<_i1.UuidValue?>, _i1.ProtocolSerialization {
  Shop._({
    this.id,
    required this.name,
    required this.description,
    this.image,
    required this.ownerId,
    this.owner,
  });

  factory Shop({
    _i1.UuidValue? id,
    required String name,
    required String description,
    String? image,
    required _i1.UuidValue ownerId,
    _i2.AuthUser? owner,
  }) = _ShopImpl;

  factory Shop.fromJson(Map<String, dynamic> jsonSerialization) {
    return Shop(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      image: jsonSerialization['image'] as String?,
      ownerId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['ownerId'],
      ),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.AuthUser>(
              jsonSerialization['owner'],
            ),
    );
  }

  static final t = ShopTable();

  static const db = ShopRepository._();

  @override
  _i1.UuidValue? id;

  String name;

  String description;

  String? image;

  _i1.UuidValue ownerId;

  _i2.AuthUser? owner;

  @override
  _i1.Table<_i1.UuidValue?> get table => t;

  /// Returns a shallow copy of this [Shop]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shop copyWith({
    _i1.UuidValue? id,
    String? name,
    String? description,
    String? image,
    _i1.UuidValue? ownerId,
    _i2.AuthUser? owner,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Shop',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'description': description,
      if (image != null) 'image': image,
      'ownerId': ownerId.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Shop',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'description': description,
      if (image != null) 'image': image,
      'ownerId': ownerId.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
    };
  }

  static ShopInclude include({_i2.AuthUserInclude? owner}) {
    return ShopInclude._(owner: owner);
  }

  static ShopIncludeList includeList({
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    ShopInclude? include,
  }) {
    return ShopIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shop.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Shop.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopImpl extends Shop {
  _ShopImpl({
    _i1.UuidValue? id,
    required String name,
    required String description,
    String? image,
    required _i1.UuidValue ownerId,
    _i2.AuthUser? owner,
  }) : super._(
         id: id,
         name: name,
         description: description,
         image: image,
         ownerId: ownerId,
         owner: owner,
       );

  /// Returns a shallow copy of this [Shop]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Shop copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    Object? image = _Undefined,
    _i1.UuidValue? ownerId,
    Object? owner = _Undefined,
  }) {
    return Shop(
      id: id is _i1.UuidValue? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image is String? ? image : this.image,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.AuthUser? ? owner : this.owner?.copyWith(),
    );
  }
}

class ShopUpdateTable extends _i1.UpdateTable<ShopTable> {
  ShopUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> image(String? value) => _i1.ColumnValue(
    table.image,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ownerId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.ownerId,
        value,
      );
}

class ShopTable extends _i1.Table<_i1.UuidValue?> {
  ShopTable({super.tableRelation}) : super(tableName: 'shops') {
    updateTable = ShopUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    ownerId = _i1.ColumnUuid(
      'ownerId',
      this,
    );
  }

  late final ShopUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString image;

  late final _i1.ColumnUuid ownerId;

  _i2.AuthUserTable? _owner;

  _i2.AuthUserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Shop.t.ownerId,
      foreignField: _i2.AuthUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AuthUserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    description,
    image,
    ownerId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    return null;
  }
}

class ShopInclude extends _i1.IncludeObject {
  ShopInclude._({_i2.AuthUserInclude? owner}) {
    _owner = owner;
  }

  _i2.AuthUserInclude? _owner;

  @override
  Map<String, _i1.Include?> get includes => {'owner': _owner};

  @override
  _i1.Table<_i1.UuidValue?> get table => Shop.t;
}

class ShopIncludeList extends _i1.IncludeList {
  ShopIncludeList._({
    _i1.WhereExpressionBuilder<ShopTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Shop.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue?> get table => Shop.t;
}

class ShopRepository {
  const ShopRepository._();

  final attachRow = const ShopAttachRowRepository._();

  /// Returns a list of [Shop]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Shop>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.db.find<Shop>(
      where: where?.call(Shop.t),
      orderBy: orderBy?.call(Shop.t),
      orderByList: orderByList?.call(Shop.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Shop] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Shop?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.db.findFirstRow<Shop>(
      where: where?.call(Shop.t),
      orderBy: orderBy?.call(Shop.t),
      orderByList: orderByList?.call(Shop.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Shop] by its [id] or null if no such row exists.
  Future<Shop?> findById(
    _i1.Session session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.db.findById<Shop>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Shop]s in the list and returns the inserted rows.
  ///
  /// The returned [Shop]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Shop>> insert(
    _i1.Session session,
    List<Shop> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Shop>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Shop] and returns the inserted row.
  ///
  /// The returned [Shop] will have its `id` field set.
  Future<Shop> insertRow(
    _i1.Session session,
    Shop row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Shop>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Shop]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Shop>> update(
    _i1.Session session,
    List<Shop> rows, {
    _i1.ColumnSelections<ShopTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Shop>(
      rows,
      columns: columns?.call(Shop.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Shop]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Shop> updateRow(
    _i1.Session session,
    Shop row, {
    _i1.ColumnSelections<ShopTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Shop>(
      row,
      columns: columns?.call(Shop.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Shop] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Shop?> updateById(
    _i1.Session session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ShopUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Shop>(
      id,
      columnValues: columnValues(Shop.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Shop]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Shop>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ShopUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ShopTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Shop>(
      columnValues: columnValues(Shop.t.updateTable),
      where: where(Shop.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shop.t),
      orderByList: orderByList?.call(Shop.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Shop]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Shop>> delete(
    _i1.Session session,
    List<Shop> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Shop>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Shop].
  Future<Shop> deleteRow(
    _i1.Session session,
    Shop row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Shop>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Shop>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Shop>(
      where: where(Shop.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Shop>(
      where: where?.call(Shop.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShopAttachRowRepository {
  const ShopAttachRowRepository._();

  /// Creates a relation between the given [Shop] and [AuthUser]
  /// by setting the [Shop]'s foreign key `ownerId` to refer to the [AuthUser].
  Future<void> owner(
    _i1.Session session,
    Shop shop,
    _i2.AuthUser owner, {
    _i1.Transaction? transaction,
  }) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $shop = shop.copyWith(ownerId: owner.id);
    await session.db.updateRow<Shop>(
      $shop,
      columns: [Shop.t.ownerId],
      transaction: transaction,
    );
  }
}
