import 'package:chinese/chinese.dart';
import 'controller/lesson_controller.dart';
import 'controller/question_type_controller.dart';
import 'controller/theme_controller.dart';
import 'controller/word_controller.dart';

class ChineseChannel extends ApplicationChannel {

  ManagedContext ?context;

  @override
  Future prepare() async {
    var dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    var psc = PostgreSQLPersistentStore.fromConnectionInfo(
        "ADMIN", "root", "localhost", 5432, "postgres");

    context = ManagedContext(dataModel, psc);
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route('/question-type').link(() => QuestionTypeController());

    router.route('/theme').link(() => ThemeController());

    router.route('/lessons').link(() => LessonController());

    router.route('/test').link(() => QuestionTypeController());

    router.route('/character').link(() => QuestionTypeController());

    router.route('/question').link(() => QuestionTypeController());

    router.route('/word').link(() => WordController(context));

    router.route('/').linkFunction((request) async {
      return Response.ok({'key': 'value'});
    });

    return router;
  }
}
