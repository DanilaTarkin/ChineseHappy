import '../chinese.dart';

class LessonController extends Controller {

  final _lesson = [
    
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_lesson);
  }
}