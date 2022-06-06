import 'package:chinese/chinese.dart';
import 'package:chinese/model/lesson.dart';

class Theme extends ManagedObject<_Theme> implements _Theme {}

@Table(name: "theme")
class _Theme {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;

  //late ManagedSet<Lesson> lesson;
  @Relate(#theme)
  late Lesson lesson;
}