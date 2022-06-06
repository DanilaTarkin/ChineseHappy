import 'package:chinese/chinese.dart';
import 'package:chinese/model/word.dart';

class Question extends ManagedObject<_Question> implements _Question {}

@Table(name: "question")
class _Question {
  @primaryKey
  late int id;

  late Word answer;
}