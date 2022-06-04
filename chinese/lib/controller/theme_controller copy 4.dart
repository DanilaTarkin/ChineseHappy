import '../chinese.dart';

class ThemeController extends Controller {

  final _theme = [
    
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_theme);
  }
}