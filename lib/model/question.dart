import 'package:chinese/chinese.dart';

class Question extends ManagedObject<_Question> implements _Question {}

@Table(name: "question")
class _Question {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}