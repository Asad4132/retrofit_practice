import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'dart:io';

part 'example.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/posts")
  Future<List<Post>> getTasks();

//  @GET("/tasks/{id}")
//  Future<Post> getTask(@Path("id") String id);
//
//  @PATCH("/tasks/{id}")
//  Future<Post> updateTaskPart(
//      @Path() String id, @Body() Map<String, dynamic> map);
//
//  @PUT("/tasks/{id}")
//  Future<Post> updateTask(@Path() String id, @Body() Post task);
//
//  @DELETE("/tasks/{id}")
//  Future<void> deleteTask(@Path() String id);
//
//  @POST("/tasks")
//  Future<Post> createTask(@Body() Post task);
//
//  @POST("http://httpbin.org/post")
//  Future<void> createNewTaskFromFile(@Part() File file);
//
//  @Headers(<String, String>{"accept": "image/jpeg"})
//  @GET("http://httpbin.org/image/jpeg")
//  @DioResponseType(ResponseType.bytes)
//  Future<List<int>> getFile();
//
//  @POST("http://httpbin.org/post")
//  @FormUrlEncoded()
//  Future<String> postUrlEncodedFormData(@Field() String hello);
//
//  @HEAD('/')
//  Future<String> headRequest();
//
//  @GET("/task/group")
//  Future<List<TaskGroup>> grouppedTaskByDate();
//
//  @GET("/task")
//  Future<HttpResponse<List<Post>>> getTasksWithReponse();
//
//  @DELETE("/tasks/{id}")
//  Future<HttpResponse<void>> deleteTaskWithResponse(@Path() String id);
//
//  @POST("https://httpbin.org/post")
//  Future<String> postFormData(@Part() Post task, @Part() File file);
//
//  @POST("https://httpbin.org/post")
//  Future<String> postFormData2(
//      @Part() List<Map<String, dynamic>> task, @Part() File file);
//
//  @POST("https://httpbin.org/post")
//  Future<String> postFormData3(@Part() List<File> files, @Part() File file);
//
//  @POST("https://httpbin.org/post")
//  Future<String> postFormData4(@Part() List<Post> tasks, @Part() File file);
//
//  @GET('/demo')
//  Future<String> queries(@Queries() Map<String, dynamic> queries);
//
//  @GET("https://httpbin.org/get")
//  Future<String> namedExample(@Query("apikey") String apiKey,
//      @Query("scope") String scope, @Query("type") String type,
//      {@Query("from") int from});
}

@JsonSerializable()
class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

//@JsonSerializable()
//class TaskGroup {
//  DateTime date;
//  List<Post> todos;
//  List<Post> completed;
//  List<Post> inProgress;
//
//  TaskGroup({this.date, this.todos, this.completed, this.inProgress});
//
//  factory TaskGroup.fromJson(Map<String, dynamic> json) =>
//      _$TaskGroupFromJson(json);
//  Map<String, dynamic> toJson() => _$TaskGroupToJson(this);
//}
