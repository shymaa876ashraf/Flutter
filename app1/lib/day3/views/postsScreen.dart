import 'package:app1/day3/models/posts.dart';
import 'package:app1/day3/services/postsService.dart';
import 'package:app1/day3/views/postDetails.dart';
import 'package:app1/day3/views/postsCard.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  bool isLoading = true;
  List<Post> posts = [];

  getPosts() async {
    posts = await PostsService().getPosts();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostDetails(
                                body: posts[index].body,
                                title: posts[index].title,
                              )),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget(
                      title: posts[index].title,
                      idPost: posts[index].id,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
