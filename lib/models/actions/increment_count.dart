library increment_count;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:educreate/models/serializers.dart';

part 'increment_count.g.dart';

abstract class IncrementCount
    implements Built<IncrementCount, IncrementCountBuilder> {
  IncrementCount._();

  factory IncrementCount([void Function(IncrementCountBuilder) updates]) =
      _$IncrementCount;

  Object toJson() => serializers.serializeWith(IncrementCount.serializer, this);

  static IncrementCount fromJson(String jsonString) => serializers
      .deserializeWith(IncrementCount.serializer, json.decode(jsonString));

  static Serializer<IncrementCount> get serializer =>
      _$incrementCountSerializer;
}
