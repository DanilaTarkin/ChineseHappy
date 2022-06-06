import 'package:chinese/chinese.dart';
import 'package:chinese/model/question.dart';

class QuestionType extends ManagedObject<_QuestionType> implements _QuestionType {}

@Table(name: "question_type")
class _QuestionType {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;

  late Question question;
}