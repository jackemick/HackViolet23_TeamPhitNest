import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'companies_record.g.dart';

abstract class CompaniesRecord
    implements Built<CompaniesRecord, CompaniesRecordBuilder> {
  static Serializer<CompaniesRecord> get serializer =>
      _$companiesRecordSerializer;

  String? get name;

  AddressStruct get address;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompaniesRecordBuilder builder) => builder
    ..name = ''
    ..address = AddressStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompaniesRecord._();
  factory CompaniesRecord([void Function(CompaniesRecordBuilder) updates]) =
      _$CompaniesRecord;

  static CompaniesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompaniesRecordData({
  String? name,
  AddressStruct? address,
}) {
  final firestoreData = serializers.toFirestore(
    CompaniesRecord.serializer,
    CompaniesRecord(
      (c) => c
        ..name = name
        ..address = AddressStructBuilder(),
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}
