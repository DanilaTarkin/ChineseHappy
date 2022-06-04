import 'package:chinese/model/word.dart';

import '../chinese.dart';

class WordController extends ResourceController {

  WordController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getWords() async {
    final wordsQuery = Query<Word>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getWordById(@Bind.path('id') int id, @Bind.body() Word word) async {
    final query = Query<Word>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = word;

    return Response.ok(await query.updateOne());
  }
}

