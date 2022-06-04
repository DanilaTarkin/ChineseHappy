import 'package:chinese/model/question.dart';

import '../chinese.dart';

class QuestionController extends ResourceController {

  QuestionController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getTests() async {
    final wordsQuery = Query<Question>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getTestById(@Bind.path('id') int id, @Bind.body() Question test) async {
    final query = Query<Question>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = test;

    return Response.ok(await query.updateOne());
  }
}