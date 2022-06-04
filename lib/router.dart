import 'package:chinese/chinese.dart';
import 'package:chinese/config/app_configuration.dart';
import 'package:chinese/model/word.dart';
import 'model/character.dart';
import 'model/lesson.dart';
import 'model/question.dart';
import 'model/question_type.dart';
import 'model/test.dart';
import 'model/theme.dart';

class ChineseChannel extends ApplicationChannel {

  ManagedContext ?context;

  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
    final config = AppConfiguration.fromFile(File(options!.configurationFilePath!));
    final db = config.database;
    final persistentStore = PostgreSQLPersistentStore.fromConnectionInfo(
        db.username, db.password, db.host, db.port, db.databaseName);

    context = ManagedContext(ManagedDataModel.fromCurrentMirrorSystem(), persistentStore);
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router  
      .route("/character/[:id]")
      .link(() => ManagedObjectController<Character>(context!));
    router  
      .route("/theme/[:id]")
      .link(() => ManagedObjectController<Theme>(context!));
    router  
      .route("/lesson/[:id]")
      .link(() => ManagedObjectController<Lesson>(context!));
    router  
      .route("/test/[:id]")
      .link(() => ManagedObjectController<Test>(context!));
    router  
      .route("/question-type/[:id]")
      .link(() => ManagedObjectController<QuestionType>(context!));
    router  
      .route("/question/[:id]")
      .link(() => ManagedObjectController<Question>(context!));
    router  
      .route("/word/[:id]")
      .link(() => ManagedObjectController<Word>(context!));
;

    router.route('/').linkFunction((request) async {
      return Response.ok("SERVER IS RUN!");
    });

    return router;
  }
}