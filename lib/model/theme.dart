import 'package:chinese/chinese.dart';

class Theme extends ManagedObject<_Theme> implements _Theme {}

@Table(name: "theme")
class _Theme {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}