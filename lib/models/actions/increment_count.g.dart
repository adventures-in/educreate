// GENERATED CODE - DO NOT MODIFY BY HAND

part of increment_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IncrementCount> _$incrementCountSerializer =
    new _$IncrementCountSerializer();

class _$IncrementCountSerializer
    implements StructuredSerializer<IncrementCount> {
  @override
  final Iterable<Type> types = const [IncrementCount, _$IncrementCount];
  @override
  final String wireName = 'IncrementCount';

  @override
  Iterable<Object> serialize(Serializers serializers, IncrementCount object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  IncrementCount deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new IncrementCountBuilder().build();
  }
}

class _$IncrementCount extends IncrementCount {
  factory _$IncrementCount([void Function(IncrementCountBuilder) updates]) =>
      (new IncrementCountBuilder()..update(updates)).build();

  _$IncrementCount._() : super._();

  @override
  IncrementCount rebuild(void Function(IncrementCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncrementCountBuilder toBuilder() =>
      new IncrementCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncrementCount;
  }

  @override
  int get hashCode {
    return 731116377;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('IncrementCount').toString();
  }
}

class IncrementCountBuilder
    implements Builder<IncrementCount, IncrementCountBuilder> {
  _$IncrementCount _$v;

  IncrementCountBuilder();

  @override
  void replace(IncrementCount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IncrementCount;
  }

  @override
  void update(void Function(IncrementCountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IncrementCount build() {
    final _$result = _$v ?? new _$IncrementCount._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
