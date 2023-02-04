// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompaniesRecord> _$companiesRecordSerializer =
    new _$CompaniesRecordSerializer();

class _$CompaniesRecordSerializer
    implements StructuredSerializer<CompaniesRecord> {
  @override
  final Iterable<Type> types = const [CompaniesRecord, _$CompaniesRecord];
  @override
  final String wireName = 'CompaniesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompaniesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CompaniesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompaniesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressStruct))! as AddressStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CompaniesRecord extends CompaniesRecord {
  @override
  final String? name;
  @override
  final AddressStruct address;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompaniesRecord([void Function(CompaniesRecordBuilder)? updates]) =>
      (new CompaniesRecordBuilder()..update(updates))._build();

  _$CompaniesRecord._({this.name, required this.address, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, r'CompaniesRecord', 'address');
  }

  @override
  CompaniesRecord rebuild(void Function(CompaniesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompaniesRecordBuilder toBuilder() =>
      new CompaniesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompaniesRecord &&
        name == other.name &&
        address == other.address &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), address.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompaniesRecord')
          ..add('name', name)
          ..add('address', address)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompaniesRecordBuilder
    implements Builder<CompaniesRecord, CompaniesRecordBuilder> {
  _$CompaniesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AddressStructBuilder? _address;
  AddressStructBuilder get address =>
      _$this._address ??= new AddressStructBuilder();
  set address(AddressStructBuilder? address) => _$this._address = address;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompaniesRecordBuilder() {
    CompaniesRecord._initializeBuilder(this);
  }

  CompaniesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompaniesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompaniesRecord;
  }

  @override
  void update(void Function(CompaniesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompaniesRecord build() => _build();

  _$CompaniesRecord _build() {
    _$CompaniesRecord _$result;
    try {
      _$result = _$v ??
          new _$CompaniesRecord._(
              name: name, address: address.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompaniesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
