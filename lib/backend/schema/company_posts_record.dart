import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_posts_record.g.dart';

abstract class CompanyPostsRecord
    implements Built<CompanyPostsRecord, CompanyPostsRecordBuilder> {
  static Serializer<CompanyPostsRecord> get serializer =>
      _$companyPostsRecordSerializer;

  DocumentReference? get companyId;

  String? get text;

  DateTime? get date;

  BuiltList<String>? get tags;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyPostsRecordBuilder builder) => builder
    ..text = ''
    ..tags = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company_posts');

  static Stream<CompanyPostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyPostsRecord._();
  factory CompanyPostsRecord(
          [void Function(CompanyPostsRecordBuilder) updates]) =
      _$CompanyPostsRecord;

  static CompanyPostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyPostsRecordData({
  DocumentReference? companyId,
  String? text,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyPostsRecord.serializer,
    CompanyPostsRecord(
      (c) => c
        ..companyId = companyId
        ..text = text
        ..date = date
        ..tags = null,
    ),
  );

  return firestoreData;
}
