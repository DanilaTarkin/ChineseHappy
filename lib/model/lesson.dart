import 'package:chinese/chinese.dart';

class Lesson extends ManagedObject<_Lesson> implements _Lesson {}

@Table(name: "lesson")
class _Lesson {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}