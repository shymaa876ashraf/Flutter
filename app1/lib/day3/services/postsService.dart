import 'package:app1/day3/models/posts.dart';
import 'package:dio/dio.dart';

class PostsService {
  String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> getPosts() async {
    List<Post> list = [];
    Response response;
    response = await Dio().get('$baseUrl/posts');
    var data = response.data;
    data.forEach((element) {
      list.add(Post.fromJson(element));
    });
    return list;
  }
}
