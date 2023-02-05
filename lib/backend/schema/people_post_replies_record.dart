import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'people_post_replies_record.g.dart';

abstract class PeoplePostRepliesRecord
    implements Built<PeoplePostRepliesRecord, PeoplePostRepliesRecordBuilder> {
  static Serializer<PeoplePostRepliesRecord> get serializer =>
      _$peoplePostRepliesRecordSerializer;

  DocumentReference? get personPostId;

  String? get text;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PeoplePostRepliesRecordBuilder builder) =>
      builder..text = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('people_post_replies');

  static Stream<PeoplePostRepliesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PeoplePostRepliesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PeoplePostRepliesRecord._();
  factory PeoplePostRepliesRecord(
          [void Function(PeoplePostRepliesRecordBuilder) updates]) =
      _$PeoplePostRepliesRecord;

  static PeoplePostRepliesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPeoplePostRepliesRecordData({
  DocumentReference? personPostId,
  String? text,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    PeoplePostRepliesRecord.serializer,
    PeoplePostRepliesRecord(
      (p) => p
        ..personPostId = personPostId
        ..text = text
        ..date = date,
    ),
  );

  return firestoreData;
}
