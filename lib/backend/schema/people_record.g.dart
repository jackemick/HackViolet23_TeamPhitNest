// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeopleRecord> _$peopleRecordSerializer =
    new _$PeopleRecordSerializer();

class _$PeopleRecordSerializer implements StructuredSerializer<PeopleRecord> {
  @override
  final Iterable<Type> types = const [PeopleRecord, _$PeopleRecord];
  @override
  final String wireName = 'PeopleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PeopleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
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
  PeopleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeopleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$PeopleRecord extends PeopleRecord {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DocumentReference<Object?>? companyId;
  @override
  final String? position;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeopleRecord([void Function(PeopleRecordBuilder)? updates]) =>
      (new PeopleRecordBuilder()..update(updates))._build();

  _$PeopleRecord._(
      {this.firstName,
      this.lastName,
      this.companyId,
      this.position,
      this.ffRef})
      : super._();

  @override
  PeopleRecord rebuild(void Function(PeopleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeopleRecordBuilder toBuilder() => new PeopleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeopleRecord &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        companyId == other.companyId &&
        position == other.position &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
                companyId.hashCode),
            position.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeopleRecord')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('companyId', companyId)
          ..add('position', position)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeopleRecordBuilder
    implements Builder<PeopleRecord, PeopleRecordBuilder> {
  _$PeopleRecord? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  DocumentReference<Object?>? _companyId;
  DocumentReference<Object?>? get companyId => _$this._companyId;
  set companyId(DocumentReference<Object?>? companyId) =>
      _$this._companyId = companyId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeopleRecordBuilder() {
    PeopleRecord._initializeBuilder(this);
  }

  PeopleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _companyId = $v.companyId;
      _position = $v.position;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeopleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeopleRecord;
  }

  @override
  void update(void Function(PeopleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeopleRecord build() => _build();

  _$PeopleRecord _build() {
    final _$result = _$v ??
        new _$PeopleRecord._(
            firstName: firstName,
            lastName: lastName,
            companyId: companyId,
            position: position,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
