import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'people_record.g.dart';

abstract class PeopleRecord
    implements Built<PeopleRecord, PeopleRecordBuilder> {
  static Serializer<PeopleRecord> get serializer => _$peopleRecordSerializer;

  DocumentReference? get companyId;

  String? get department;

  String? get fullName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PeopleRecordBuilder builder) => builder
    ..department = ''
    ..fullName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('people');

  static Stream<PeopleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PeopleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PeopleRecord._();
  factory PeopleRecord([void Function(PeopleRecordBuilder) updates]) =
      _$PeopleRecord;

  static PeopleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPeopleRecordData({
  DocumentReference? companyId,
  String? department,
  String? fullName,
}) {
  final firestoreData = serializers.toFirestore(
    PeopleRecord.serializer,
    PeopleRecord(
      (p) => p
        ..companyId = companyId
        ..department = department
        ..fullName = fullName,
    ),
  );

  return firestoreData;
}
