import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'people_posts_record.g.dart';

abstract class PeoplePostsRecord
    implements Built<PeoplePostsRecord, PeoplePostsRecordBuilder> {
  static Serializer<PeoplePostsRecord> get serializer =>
      _$peoplePostsRecordSerializer;

  String? get text;

  DateTime? get date;

  DocumentReference? get personId;

  bool? get aggressive;

  bool? get reflects;

  bool? get approachable;

  bool? get witnessedHarassing;

  bool? get facedHarassment;

  String? get position;

  DateTime? get datePosted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PeoplePostsRecordBuilder builder) => builder
    ..text = ''
    ..aggressive = false
    ..reflects = false
    ..approachable = false
    ..witnessedHarassing = false
    ..facedHarassment = false
    ..position = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('people_posts');

  static Stream<PeoplePostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PeoplePostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PeoplePostsRecord._();
  factory PeoplePostsRecord([void Function(PeoplePostsRecordBuilder) updates]) =
      _$PeoplePostsRecord;

  static PeoplePostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPeoplePostsRecordData({
  String? text,
  DateTime? date,
  DocumentReference? personId,
  bool? aggressive,
  bool? reflects,
  bool? approachable,
  bool? witnessedHarassing,
  bool? facedHarassment,
  String? position,
  DateTime? datePosted,
}) {
  final firestoreData = serializers.toFirestore(
    PeoplePostsRecord.serializer,
    PeoplePostsRecord(
      (p) => p
        ..text = text
        ..date = date
        ..personId = personId
        ..aggressive = aggressive
        ..reflects = reflects
        ..approachable = approachable
        ..witnessedHarassing = witnessedHarassing
        ..facedHarassment = facedHarassment
        ..position = position
        ..datePosted = datePosted,
    ),
  );

  return firestoreData;
}
