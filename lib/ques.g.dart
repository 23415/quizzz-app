// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ques.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ques _$quesFromJson(Map<String, dynamic> json) => ques(
      question: json['question'] as String,
      correct_answer: json['correct_answer'] as String,
      incorrect_answers: json['incorrect_answers'] as String,
    );

Map<String, dynamic> _$quesToJson(ques instance) => <String, dynamic>{
      'question': instance.question,
      'correct_answer': instance.correct_answer,
      'incorrect_answers': instance.incorrect_answers,
    };
