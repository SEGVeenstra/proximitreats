/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i2;
import 'package:proximitreats_client/src/protocol/protocol.dart' as _i3;

abstract class Shop implements _i1.SerializableModel {
  Shop._({
    this.id,
    required this.name,
    String? intro,
    required this.description,
    this.image,
    required this.ownerId,
    this.owner,
  }) : intro = intro ?? '';

  factory Shop({
    _i1.UuidValue? id,
    required String name,
    String? intro,
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
      intro: jsonSerialization['intro'] as String,
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue? id;

  String name;

  String intro;

  String description;

  String? image;

  _i1.UuidValue ownerId;

  _i2.AuthUser? owner;

  /// Returns a shallow copy of this [Shop]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shop copyWith({
    _i1.UuidValue? id,
    String? name,
    String? intro,
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
      'intro': intro,
      'description': description,
      if (image != null) 'image': image,
      'ownerId': ownerId.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
    };
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
    String? intro,
    required String description,
    String? image,
    required _i1.UuidValue ownerId,
    _i2.AuthUser? owner,
  }) : super._(
         id: id,
         name: name,
         intro: intro,
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
    String? intro,
    String? description,
    Object? image = _Undefined,
    _i1.UuidValue? ownerId,
    Object? owner = _Undefined,
  }) {
    return Shop(
      id: id is _i1.UuidValue? ? id : this.id,
      name: name ?? this.name,
      intro: intro ?? this.intro,
      description: description ?? this.description,
      image: image is String? ? image : this.image,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.AuthUser? ? owner : this.owner?.copyWith(),
    );
  }
}
