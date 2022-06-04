import '../chinese.dart';

class TestController extends Controller {

  final _test = [
    
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_test);
  }
}