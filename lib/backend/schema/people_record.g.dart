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
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.department;
    if (value != null) {
      result
        ..add('department')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
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
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
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
  final DocumentReference<Object?>? companyId;
  @override
  final String? department;
  @override
  final String? fullName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeopleRecord([void Function(PeopleRecordBuilder)? updates]) =>
      (new PeopleRecordBuilder()..update(updates))._build();

  _$PeopleRecord._({this.companyId, this.department, this.fullName, this.ffRef})
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
        companyId == other.companyId &&
        department == other.department &&
        fullName == other.fullName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, companyId.hashCode), department.hashCode),
            fullName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeopleRecord')
          ..add('companyId', companyId)
          ..add('department', department)
          ..add('fullName', fullName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeopleRecordBuilder
    implements Builder<PeopleRecord, PeopleRecordBuilder> {
  _$PeopleRecord? _$v;

  DocumentReference<Object?>? _companyId;
  DocumentReference<Object?>? get companyId => _$this._companyId;
  set companyId(DocumentReference<Object?>? companyId) =>
      _$this._companyId = companyId;

  String? _department;
  String? get department => _$this._department;
  set department(String? department) => _$this._department = department;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeopleRecordBuilder() {
    PeopleRecord._initializeBuilder(this);
  }

  PeopleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _department = $v.department;
      _fullName = $v.fullName;
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
            companyId: companyId,
            department: department,
            fullName: fullName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
