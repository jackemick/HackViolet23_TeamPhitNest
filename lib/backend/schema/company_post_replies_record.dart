import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_post_replies_record.g.dart';

abstract class CompanyPostRepliesRecord
    implements
        Built<CompanyPostRepliesRecord, CompanyPostRepliesRecordBuilder> {
  static Serializer<CompanyPostRepliesRecord> get serializer =>
      _$companyPostRepliesRecordSerializer;

  DocumentReference? get companyPostId;

  String? get text;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyPostRepliesRecordBuilder builder) =>
      builder..text = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company_post_replies');

  static Stream<CompanyPostRepliesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyPostRepliesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyPostRepliesRecord._();
  factory CompanyPostRepliesRecord(
          [void Function(CompanyPostRepliesRecordBuilder) updates]) =
      _$CompanyPostRepliesRecord;

  static CompanyPostRepliesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyPostRepliesRecordData({
  DocumentReference? companyPostId,
  String? text,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyPostRepliesRecord.serializer,
    CompanyPostRepliesRecord(
      (c) => c
        ..companyPostId = companyPostId
        ..text = text
        ..date = date,
    ),
  );

  return firestoreData;
}
