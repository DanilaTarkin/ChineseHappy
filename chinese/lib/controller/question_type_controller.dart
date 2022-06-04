import '../chinese.dart';

class QuestionTypeController extends Controller {

  final _question_type = [
    
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_question_type);
  }
}
