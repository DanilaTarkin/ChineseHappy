import 'package:chinese/model/lesson.dart';

import '../chinese.dart';

class LessonController extends ResourceController {

  LessonController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getTests() async {
    final wordsQuery = Query<Lesson>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getTestById(@Bind.path('id') int id, @Bind.body() Lesson test) async {
    final query = Query<Lesson>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = test;

    return Response.ok(await query.updateOne());
  }
}