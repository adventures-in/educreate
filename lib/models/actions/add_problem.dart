library add_problem;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:educreate/models/problem.dart';
import 'package:educreate/models/serializers.dart';

part 'add_problem.g.dart';

abstract class AddProblem implements Built<AddProblem, AddProblemBuilder> {
  Problem get problem;

  AddProblem._();

  factory AddProblem([void Function(AddProblemBuilder) updates]) = _$AddProblem;

  Object toJson() => serializers.serializeWith(AddProblem.serializer, this);

  static AddProblem fromJson(String jsonString) => serializers.deserializeWith(
      AddProblem.serializer, json.decode(jsonString));

  static Serializer<AddProblem> get serializer => _$addProblemSerializer;
}
