import 'package:chinese/chinese.dart';

class Character extends ManagedObject<_Character> implements _Character {}

@Table(name: "character")
class _Character {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}