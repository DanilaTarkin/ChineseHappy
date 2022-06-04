import 'package:chinese/model/character.dart';

import '../chinese.dart';

class CharacterController extends ResourceController {

  CharacterController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getTests() async {
    final wordsQuery = Query<Character>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getTestById(@Bind.path('id') int id, @Bind.body() Character test) async {
    final query = Query<Character>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = test;

    return Response.ok(await query.updateOne());
  }
}