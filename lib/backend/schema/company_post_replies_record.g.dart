// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_post_replies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyPostRepliesRecord> _$companyPostRepliesRecordSerializer =
    new _$CompanyPostRepliesRecordSerializer();

class _$CompanyPostRepliesRecordSerializer
    implements StructuredSerializer<CompanyPostRepliesRecord> {
  @override
  final Iterable<Type> types = const [
    CompanyPostRepliesRecord,
    _$CompanyPostRepliesRecord
  ];
  @override
  final String wireName = 'CompanyPostRepliesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompanyPostRepliesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.companyPostId;
    if (value != null) {
      result
        ..add('companyPostId')
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
  CompanyPostRepliesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyPostRepliesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'companyPostId':
          result.companyPostId = serializers.deserialize(value,
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

class _$CompanyPostRepliesRecord extends CompanyPostRepliesRecord {
  @override
  final DocumentReference<Object?>? companyPostId;
  @override
  final String? text;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyPostRepliesRecord(
          [void Function(CompanyPostRepliesRecordBuilder)? updates]) =>
      (new CompanyPostRepliesRecordBuilder()..update(updates))._build();

  _$CompanyPostRepliesRecord._(
      {this.companyPostId, this.text, this.date, this.ffRef})
      : super._();

  @override
  CompanyPostRepliesRecord rebuild(
          void Function(CompanyPostRepliesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyPostRepliesRecordBuilder toBuilder() =>
      new CompanyPostRepliesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyPostRepliesRecord &&
        companyPostId == other.companyPostId &&
        text == other.text &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, companyPostId.hashCode), text.hashCode), date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyPostRepliesRecord')
          ..add('companyPostId', companyPostId)
          ..add('text', text)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyPostRepliesRecordBuilder
    implements
        Builder<CompanyPostRepliesRecord, CompanyPostRepliesRecordBuilder> {
  _$CompanyPostRepliesRecord? _$v;

  DocumentReference<Object?>? _companyPostId;
  DocumentReference<Object?>? get companyPostId => _$this._companyPostId;
  set companyPostId(DocumentReference<Object?>? companyPostId) =>
      _$this._companyPostId = companyPostId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyPostRepliesRecordBuilder() {
    CompanyPostRepliesRecord._initializeBuilder(this);
  }

  CompanyPostRepliesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyPostId = $v.companyPostId;
      _text = $v.text;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyPostRepliesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyPostRepliesRecord;
  }

  @override
  void update(void Function(CompanyPostRepliesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyPostRepliesRecord build() => _build();

  _$CompanyPostRepliesRecord _build() {
    final _$result = _$v ??
        new _$CompanyPostRepliesRecord._(
            companyPostId: companyPostId, text: text, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
