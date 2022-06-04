import 'package:chinese/chinese.dart';

Future main() async {
  final app = Application<ChineseChannel>()
    ..options.configurationFilePath = "config.yaml"
    ..options.port = 80;

  await app.startOnCurrentIsolate();

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}
