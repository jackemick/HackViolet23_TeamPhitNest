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
    value = object.personId;
    if (value != null) {
      result
        ..add('personId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.aggressive;
    if (value != null) {
      result
        ..add('aggressive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reflects;
    if (value != null) {
      result
        ..add('reflects')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.approachable;
    if (value != null) {
      result
        ..add('approachable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.witnessedHarassing;
    if (value != null) {
      result
        ..add('witnessedHarassing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.facedHarassment;
    if (value != null) {
      result
        ..add('facedHarassment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'personId':
          result.personId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'aggressive':
          result.aggressive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'reflects':
          result.reflects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'approachable':
          result.approachable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'witnessedHarassing':
          result.witnessedHarassing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'facedHarassment':
          result.facedHarassment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$PeoplePostsRecord extends PeoplePostsRecord {
  @override
  final String? text;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? personId;
  @override
  final bool? aggressive;
  @override
  final bool? reflects;
  @override
  final bool? approachable;
  @override
  final bool? witnessedHarassing;
  @override
  final bool? facedHarassment;
  @override
  final String? position;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PeoplePostsRecord(
          [void Function(PeoplePostsRecordBuilder)? updates]) =>
      (new PeoplePostsRecordBuilder()..update(updates))._build();

  _$PeoplePostsRecord._(
      {this.text,
      this.date,
      this.personId,
      this.aggressive,
      this.reflects,
      this.approachable,
      this.witnessedHarassing,
      this.facedHarassment,
      this.position,
      this.ffRef})
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
        text == other.text &&
        date == other.date &&
        personId == other.personId &&
        aggressive == other.aggressive &&
        reflects == other.reflects &&
        approachable == other.approachable &&
        witnessedHarassing == other.witnessedHarassing &&
        facedHarassment == other.facedHarassment &&
        position == other.position &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, text.hashCode), date.hashCode),
                                    personId.hashCode),
                                aggressive.hashCode),
                            reflects.hashCode),
                        approachable.hashCode),
                    witnessedHarassing.hashCode),
                facedHarassment.hashCode),
            position.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeoplePostsRecord')
          ..add('text', text)
          ..add('date', date)
          ..add('personId', personId)
          ..add('aggressive', aggressive)
          ..add('reflects', reflects)
          ..add('approachable', approachable)
          ..add('witnessedHarassing', witnessedHarassing)
          ..add('facedHarassment', facedHarassment)
          ..add('position', position)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PeoplePostsRecordBuilder
    implements Builder<PeoplePostsRecord, PeoplePostsRecordBuilder> {
  _$PeoplePostsRecord? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _personId;
  DocumentReference<Object?>? get personId => _$this._personId;
  set personId(DocumentReference<Object?>? personId) =>
      _$this._personId = personId;

  bool? _aggressive;
  bool? get aggressive => _$this._aggressive;
  set aggressive(bool? aggressive) => _$this._aggressive = aggressive;

  bool? _reflects;
  bool? get reflects => _$this._reflects;
  set reflects(bool? reflects) => _$this._reflects = reflects;

  bool? _approachable;
  bool? get approachable => _$this._approachable;
  set approachable(bool? approachable) => _$this._approachable = approachable;

  bool? _witnessedHarassing;
  bool? get witnessedHarassing => _$this._witnessedHarassing;
  set witnessedHarassing(bool? witnessedHarassing) =>
      _$this._witnessedHarassing = witnessedHarassing;

  bool? _facedHarassment;
  bool? get facedHarassment => _$this._facedHarassment;
  set facedHarassment(bool? facedHarassment) =>
      _$this._facedHarassment = facedHarassment;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PeoplePostsRecordBuilder() {
    PeoplePostsRecord._initializeBuilder(this);
  }

  PeoplePostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _date = $v.date;
      _personId = $v.personId;
      _aggressive = $v.aggressive;
      _reflects = $v.reflects;
      _approachable = $v.approachable;
      _witnessedHarassing = $v.witnessedHarassing;
      _facedHarassment = $v.facedHarassment;
      _position = $v.position;
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
    final _$result = _$v ??
        new _$PeoplePostsRecord._(
            text: text,
            date: date,
            personId: personId,
            aggressive: aggressive,
            reflects: reflects,
            approachable: approachable,
            witnessedHarassing: witnessedHarassing,
            facedHarassment: facedHarassment,
            position: position,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
