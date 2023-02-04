// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_post_replies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeoplePostRepliesRecord> _$peoplePostRepliesRecordSerializer =
    new _$PeoplePostRepliesRecordSerializer();

class _$PeoplePostRepliesRecordSerializer
    implements StructuredSerializer<PeoplePostRepliesRecord> {
  @override
  final Iterable<Type> types = const [
    PeoplePostRepliesRecord,
    _$PeoplePostRepliesRecord
  ];
  @override
  final String wireName = 'PeoplePostRepliesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PeoplePostRepliesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.personPostId;
    if (value != null) {
      result
        ..add('personPostId')
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
  PeoplePostRepliesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeoplePostRepliesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'personPostId':
          result.personPostId = serializers.deserialize(value,
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

class _$PeoplePostRepliesRecord extends PeoplePostRepliesRecord {
  @override
  final DocumentReference<Object?>? personPostId;
  @override
  final String? text;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeoplePostRepliesRecord(
          [void Function(PeoplePostRepliesRecordBuilder)? updates]) =>
      (new PeoplePostRepliesRecordBuilder()..update(updates))._build();

  _$PeoplePostRepliesRecord._(
      {this.personPostId, this.text, this.date, this.ffRef})
      : super._();

  @override
  PeoplePostRepliesRecord rebuild(
          void Function(PeoplePostRepliesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeoplePostRepliesRecordBuilder toBuilder() =>
      new PeoplePostRepliesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeoplePostRepliesRecord &&
        personPostId == other.personPostId &&
        text == other.text &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, personPostId.hashCode), text.hashCode), date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeoplePostRepliesRecord')
          ..add('personPostId', personPostId)
          ..add('text', text)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeoplePostRepliesRecordBuilder
    implements
        Builder<PeoplePostRepliesRecord, PeoplePostRepliesRecordBuilder> {
  _$PeoplePostRepliesRecord? _$v;

  DocumentReference<Object?>? _personPostId;
  DocumentReference<Object?>? get personPostId => _$this._personPostId;
  set personPostId(DocumentReference<Object?>? personPostId) =>
      _$this._personPostId = personPostId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeoplePostRepliesRecordBuilder() {
    PeoplePostRepliesRecord._initializeBuilder(this);
  }

  PeoplePostRepliesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personPostId = $v.personPostId;
      _text = $v.text;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeoplePostRepliesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeoplePostRepliesRecord;
  }

  @override
  void update(void Function(PeoplePostRepliesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeoplePostRepliesRecord build() => _build();

  _$PeoplePostRepliesRecord _build() {
    final _$result = _$v ??
        new _$PeoplePostRepliesRecord._(
            personPostId: personPostId, text: text, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
