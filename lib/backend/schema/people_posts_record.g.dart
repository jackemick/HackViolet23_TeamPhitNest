// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeoplePostsRecord> _$peoplePostsRecordSerializer =
    new _$PeoplePostsRecordSerializer();

class _$PeoplePostsRecordSerializer
    implements StructuredSerializer<PeoplePostsRecord> {
  @override
  final Iterable<Type> types = const [PeoplePostsRecord, _$PeoplePostsRecord];
  @override
  final String wireName = 'PeoplePostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PeoplePostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.personId;
    if (value != null) {
      result
        ..add('personId')
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
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  PeoplePostsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeoplePostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'personId':
          result.personId = serializers.deserialize(value,
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
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$PeoplePostsRecord extends PeoplePostsRecord {
  @override
  final DocumentReference<Object?>? personId;
  @override
  final String? text;
  @override
  final DateTime? date;
  @override
  final BuiltList<String>? tags;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeoplePostsRecord(
          [void Function(PeoplePostsRecordBuilder)? updates]) =>
      (new PeoplePostsRecordBuilder()..update(updates))._build();

  _$PeoplePostsRecord._(
      {this.personId, this.text, this.date, this.tags, this.ffRef})
      : super._();

  @override
  PeoplePostsRecord rebuild(void Function(PeoplePostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeoplePostsRecordBuilder toBuilder() =>
      new PeoplePostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeoplePostsRecord &&
        personId == other.personId &&
        text == other.text &&
        date == other.date &&
        tags == other.tags &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, personId.hashCode), text.hashCode), date.hashCode),
            tags.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeoplePostsRecord')
          ..add('personId', personId)
          ..add('text', text)
          ..add('date', date)
          ..add('tags', tags)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeoplePostsRecordBuilder
    implements Builder<PeoplePostsRecord, PeoplePostsRecordBuilder> {
  _$PeoplePostsRecord? _$v;

  DocumentReference<Object?>? _personId;
  DocumentReference<Object?>? get personId => _$this._personId;
  set personId(DocumentReference<Object?>? personId) =>
      _$this._personId = personId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeoplePostsRecordBuilder() {
    PeoplePostsRecord._initializeBuilder(this);
  }

  PeoplePostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _text = $v.text;
      _date = $v.date;
      _tags = $v.tags?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeoplePostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeoplePostsRecord;
  }

  @override
  void update(void Function(PeoplePostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeoplePostsRecord build() => _build();

  _$PeoplePostsRecord _build() {
    _$PeoplePostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PeoplePostsRecord._(
              personId: personId,
              text: text,
              date: date,
              tags: _tags?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PeoplePostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
