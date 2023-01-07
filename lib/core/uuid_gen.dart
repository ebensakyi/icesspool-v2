import 'package:uuid/uuid.dart';

Future<String> generateId() async {
  var uuid = await Uuid();
  var id = await uuid.v1();

  return id;
}
