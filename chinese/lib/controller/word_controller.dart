import 'package:chinese/entity/word.dart';

import '../chinese.dart';

class WordController extends ResourceController {

  WordController(this.context);

  final ManagedContext ?context;

    @Operation.get()
  Future<Response> getAllWords() async {
    final wordsQuery = Query<Word>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
    //return Response.ok(["Atlanta", "Madison", "Mountain View"]);
  }

}

