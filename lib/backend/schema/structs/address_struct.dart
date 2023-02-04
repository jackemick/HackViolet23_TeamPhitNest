import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'address_struct.g.dart';

abstract class AddressStruct
    implements Built<AddressStruct, AddressStructBuilder> {
  static Serializer<AddressStruct> get serializer => _$addressStructSerializer;

  String? get street;

  String? get city;

  String? get state;

  String? get zipCode;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AddressStructBuilder builder) => builder
    ..street = ''
    ..city = ''
    ..state = ''
    ..zipCode = ''
    ..firestoreUtilData = FirestoreUtilData();

  AddressStruct._();
  factory AddressStruct([void Function(AddressStructBuilder) updates]) =
      _$AddressStruct;
}

AddressStruct createAddressStruct({
  String? street,
  String? city,
  String? state,
  String? zipCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      (a) => a
        ..street = street
        ..city = city
        ..state = state
        ..zipCode = zipCode
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
}) =>
    address != null
        ? (address.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && address.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = address.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AddressStruct.serializer, address);

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((a) => getAddressFirestoreData(a, true)).toList() ?? [];