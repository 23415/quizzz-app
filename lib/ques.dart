import 'package:json_annotation/json_annotation.dart';

part 'ques.g.dart';

@JsonSerializable()
class ques {
  /// The generated code assumes these values exist in JSON.
  final String question;
  final String correct_answer;
  final String incorrect_answers;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.

  ques({
    required this.question,
    required this.correct_answer,
    required this.incorrect_answers,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory ques.fromJson(Map<String, dynamic> json) => _$quesFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$quesToJson(this);
}
