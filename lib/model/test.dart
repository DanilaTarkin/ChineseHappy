import 'package:chinese/chinese.dart';
import 'package:chinese/model/lesson.dart';
import 'package:chinese/model/question.dart';

class Test extends ManagedObject<_Test> implements _Test {}

@Table(name: "test")
class _Test {
  @primaryKey
  int ?id;
  
  late ManagedSet<Lesson> lesson;

  @Relate(#test)
  late Question question;
}