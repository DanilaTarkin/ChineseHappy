import 'package:chinese/chinese.dart';

class Test extends ManagedObject<_Test> implements _Test {}

@Table(name: "test")
class _Test {
  @primaryKey
  int ?id;

  @Column(unique: true)
  String ?name;
}