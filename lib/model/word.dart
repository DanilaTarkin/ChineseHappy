import 'package:chinese/chinese.dart';

class Word extends ManagedObject<_Word> implements _Word {}

@Table(name: "word")
class _Word {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}