import 'package:chinese/chinese.dart';
import 'package:chinese/model/character.dart';
import 'package:chinese/model/question_type.dart';
import 'package:chinese/model/test.dart';
import 'package:chinese/model/word.dart';

class Question extends ManagedObject<_Question> implements _Question {}

@Table(name: "question")
class _Question {
  @primaryKey
  int ?id;

  late Test test;

  @Relate(#question)
  late QuestionType questionType;
  
  @Relate(#question)
  late Word word;
  
  @Relate(#question)
  late Character character;
}