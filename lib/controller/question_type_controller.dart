import 'package:chinese/model/question_type.dart';

import '../chinese.dart';

class QuestionTypeController extends ResourceController {

  QuestionTypeController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getTests() async {
    final wordsQuery = Query<QuestionType>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getTestById(@Bind.path('id') int id, @Bind.body() QuestionType test) async {
    final query = Query<QuestionType>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = test;

    return Response.ok(await query.updateOne());
  }
}
