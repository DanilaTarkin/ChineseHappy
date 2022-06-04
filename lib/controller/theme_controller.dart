import 'package:chinese/model/theme.dart';

import '../chinese.dart';

class ThemeController extends ResourceController {

  ThemeController(this.context);

  final ManagedContext ?context;

  @Operation.get()
  Future<Response> getTests() async {
    final wordsQuery = Query<Theme>(context!);
    final words = await wordsQuery.fetch();

    return Response.ok(words);
  }
  
  @Operation.get('id')
  Future<Response> getTestById(@Bind.path('id') int id, @Bind.body() Theme test) async {
    final query = Query<Theme>(context!)
      ..where((u) => u.id).equalTo(id)
      ..values = test;

    return Response.ok(await query.updateOne());
  }
}