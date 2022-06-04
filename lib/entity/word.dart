import 'package:chinese/chinese.dart';

class Word extends ManagedObject<_Word> implements _Word {}

class _Word {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?character_word;
}