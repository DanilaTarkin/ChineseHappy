import 'package:chinese/chinese.dart';
import 'package:chinese/model/test.dart';
import 'package:chinese/model/theme.dart';

class Lesson extends ManagedObject<_Lesson> implements _Lesson {}

@Table(name: "lesson")
class _Lesson {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
  late ManagedSet<Theme> theme;

  @Relate(#lesson)
  late Test test;

}