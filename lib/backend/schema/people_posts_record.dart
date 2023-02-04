import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'people_posts_record.g.dart';

abstract class PeoplePostsRecord
    implements Built<PeoplePostsRecord, PeoplePostsRecordBuilder> {
  static Serializer<PeoplePostsRecord> get serializer =>
      _$peoplePostsRecordSerializer;

  DocumentReference? get personId;

  String? get text;

  DateTime? get date;

  BuiltList<String>? get tags;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PeoplePostsRecordBuilder builder) => builder
    ..text = ''
    ..tags = ListBuilder();

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
  DocumentReference? personId,
  String? text,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    PeoplePostsRecord.serializer,
    PeoplePostsRecord(
      (p) => p
        ..personId = personId
        ..text = text
        ..date = date
        ..tags = null,
    ),
  );

  return firestoreData;
}
