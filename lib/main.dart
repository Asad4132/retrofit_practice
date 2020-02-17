import 'dart:io';

import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

import 'example.dart';

final logger = Logger();

Future funcThatMakesAsyncCall() async {
  final dio = Dio();
  dio.options.headers["Demo-Header"] = "demo header";
  dio.options.headers["Content-Type"] = "application/json";
  final client = RestClient(dio);
  var result = await client.getTasks();
  print("UserID " + result[99].userId.toString());
}

void main(List<String> args) {
  final dio = Dio();
  dio.options.headers["Demo-Header"] = "demo header";
  dio.options.headers["Content-Type"] = "application/json";
  final client = RestClient(dio);
  Future<List<Post>> a = client.getTasks();
  funcThatMakesAsyncCall();

//  client.getTasks().then((it) => logger.i(it));
//  client.getTasks().whenComplete();
//
//  print(a.removeLast().id);

//  final Future<List<Post>> a = client.getTasks().;
//  print(a);

//  client.getTask("2").then((it) => logger.i(it)).catchError((Object obj) {
//    // non-200 error goes here.
//    switch (obj.runtimeType) {
//      case DioError:
//        final res = (obj as DioError).response;
//        logger.e("Got error : ${res.statusCode} -> ${res.statusMessage}");
//        break;
//      default:
//    }
//  });
//
//  client.createTask(Post(avatar: "2222.png", name: "new task")).then((it) {
//    logger.i(it.toJson());
//  });
//
//  client
//      .updateTask("3", Post(id: "4", avatar: "1.png", name: "number 3"))
//      .then((it) {
//    logger.i(it.toJson());
//  });
//
//  client
//      .updateTaskPart(
//          "4", Post(id: "4", avatar: "1.png", name: "number 4").toJson())
//      .then((it) {
//    logger.i(it.toJson());
//  });
//
//  client.deleteTask("2").then((it) {
//    logger.i("taks 2 has been deleted!");
//  }).catchError((Object err) {
//    logger.e(err);
//  });
//
//  client.createNewTaskFromFile(File("main.dart")).catchError((Object err) {
//    print(err);
//  });
//  client.getFile().then((it) {
//    print(it.length);
//  });
}
