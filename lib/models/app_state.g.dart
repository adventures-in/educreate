// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'problems',
      serializers.serialize(object.problems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Problem)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'problems':
          result.problems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Problem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final int count;
  @override
  final BuiltList<Problem> problems;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.count, this.problems}) : super._() {
    if (count == null) {
      throw new BuiltValueNullFieldError('AppState', 'count');
    }
    if (problems == null) {
      throw new BuiltValueNullFieldError('AppState', 'problems');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        count == other.count &&
        problems == other.problems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), problems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('count', count)
          ..add('problems', problems))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  ListBuilder<Problem> _problems;
  ListBuilder<Problem> get problems =>
      _$this._problems ??= new ListBuilder<Problem>();
  set problems(ListBuilder<Problem> problems) => _$this._problems = problems;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _count = _$v.count;
      _problems = _$v.problems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result =
          _$v ?? new _$AppState._(count: count, problems: problems.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'problems';
        problems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
