// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyPostsRecord> _$companyPostsRecordSerializer =
    new _$CompanyPostsRecordSerializer();

class _$CompanyPostsRecordSerializer
    implements StructuredSerializer<CompanyPostsRecord> {
  @override
  final Iterable<Type> types = const [CompanyPostsRecord, _$CompanyPostsRecord];
  @override
  final String wireName = 'CompanyPostsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyPostsRecord object,
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
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CompanyPostsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyPostsRecordBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$CompanyPostsRecord extends CompanyPostsRecord {
  @override
  final DocumentReference<Object?>? companyId;
  @override
  final String? text;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyPostsRecord(
          [void Function(CompanyPostsRecordBuilder)? updates]) =>
      (new CompanyPostsRecordBuilder()..update(updates))._build();

  _$CompanyPostsRecord._({this.companyId, this.text, this.date, this.ffRef})
      : super._();

  @override
  CompanyPostsRecord rebuild(
          void Function(CompanyPostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyPostsRecordBuilder toBuilder() =>
      new CompanyPostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyPostsRecord &&
        companyId == other.companyId &&
        text == other.text &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, companyId.hashCode), text.hashCode), date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyPostsRecord')
          ..add('companyId', companyId)
          ..add('text', text)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyPostsRecordBuilder
    implements Builder<CompanyPostsRecord, CompanyPostsRecordBuilder> {
  _$CompanyPostsRecord? _$v;

  DocumentReference<Object?>? _companyId;
  DocumentReference<Object?>? get companyId => _$this._companyId;
  set companyId(DocumentReference<Object?>? companyId) =>
      _$this._companyId = companyId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyPostsRecordBuilder() {
    CompanyPostsRecord._initializeBuilder(this);
  }

  CompanyPostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _text = $v.text;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyPostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyPostsRecord;
  }

  @override
  void update(void Function(CompanyPostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyPostsRecord build() => _build();

  _$CompanyPostsRecord _build() {
    final _$result = _$v ??
        new _$CompanyPostsRecord._(
            companyId: companyId, text: text, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
