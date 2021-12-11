// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'common/domain/models/user_entitiy.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 5054737816769856400),
      name: 'UserEntity',
      lastPropertyId: const IdUid(9, 699431118709255589),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1902308490124213438),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4175348995531918878),
            name: 'uid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2912186238114760258),
            name: 'firstName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1294814619952919431),
            name: 'lastName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3660522252918074798),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 8805119617797578841),
            name: 'profilePicUrl',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4419744633808030564),
            name: 'phone',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 699431118709255589),
            name: 'profilePicturePath',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 5054737816769856400),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [4292903254923179199],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    UserEntity: EntityDefinition<UserEntity>(
        model: _entities[0],
        toOneRelations: (UserEntity object) => [],
        toManyRelations: (UserEntity object) => {},
        getId: (UserEntity object) => object.id,
        setId: (UserEntity object, int id) {
          object.id = id;
        },
        objectToFB: (UserEntity object, fb.Builder fbb) {
          final uidOffset = fbb.writeString(object.uid);
          final firstNameOffset = fbb.writeString(object.firstName);
          final lastNameOffset = fbb.writeString(object.lastName);
          final emailOffset = fbb.writeString(object.email);
          final profilePicUrlOffset = object.profilePicUrl == null
              ? null
              : fbb.writeString(object.profilePicUrl!);
          final phoneOffset = fbb.writeString(object.phone);
          final profilePicturePathOffset = object.profilePicturePath == null
              ? null
              : fbb.writeString(object.profilePicturePath!);
          fbb.startTable(10);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, uidOffset);
          fbb.addOffset(2, firstNameOffset);
          fbb.addOffset(3, lastNameOffset);
          fbb.addOffset(4, emailOffset);
          fbb.addOffset(5, profilePicUrlOffset);
          fbb.addOffset(6, phoneOffset);
          fbb.addOffset(8, profilePicturePathOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = UserEntity(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              uid: const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              firstName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              lastName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              email:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''),
              profilePicUrl: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              profilePicturePath: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              phone: const fb.StringReader()
                  .vTableGet(buffer, rootOffset, 16, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [UserEntity] entity fields to define ObjectBox queries.
class UserEntity_ {
  /// see [UserEntity.id]
  static final id =
      QueryIntegerProperty<UserEntity>(_entities[0].properties[0]);

  /// see [UserEntity.uid]
  static final uid =
      QueryStringProperty<UserEntity>(_entities[0].properties[1]);

  /// see [UserEntity.firstName]
  static final firstName =
      QueryStringProperty<UserEntity>(_entities[0].properties[2]);

  /// see [UserEntity.lastName]
  static final lastName =
      QueryStringProperty<UserEntity>(_entities[0].properties[3]);

  /// see [UserEntity.email]
  static final email =
      QueryStringProperty<UserEntity>(_entities[0].properties[4]);

  /// see [UserEntity.profilePicUrl]
  static final profilePicUrl =
      QueryStringProperty<UserEntity>(_entities[0].properties[5]);

  /// see [UserEntity.phone]
  static final phone =
      QueryStringProperty<UserEntity>(_entities[0].properties[6]);

  /// see [UserEntity.profilePicturePath]
  static final profilePicturePath =
      QueryStringProperty<UserEntity>(_entities[0].properties[7]);
}
