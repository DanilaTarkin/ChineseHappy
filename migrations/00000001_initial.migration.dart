import 'dart:async';
import 'package:conduit/conduit.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("word", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
		database.createTable(SchemaTable("question", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false)]));
		database.addColumn("word", SchemaColumn.relationship("question", ManagedPropertyType.bigInteger, relatedTableName: "question", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: false, isUnique: true));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
      // await database.store?.execute("INSERT INTO word (name) VALUES (@name)", substitutionValues: {
      //   "name": "ssqsq",
      // });
      await database.store?.execute("INSERT INTO question DEFAULT VALUES", substitutionValues: {

      });
      await database.store?.execute("INSERT INTO word (name, question_id) VALUES (@name, @question_id)", substitutionValues: {
        "name": "ssqsq",
        "question_id": 1
      });
  }
}
    