import 'package:chinese/chinese.dart';
import 'package:chinese/model/question.dart';

class Word extends ManagedObject<_Word> implements _Word {}

@Table(name: "word")
class _Word {
  @primaryKey
  late int id;

  @Column(unique: true)
  late String name;

  late Question question;
}