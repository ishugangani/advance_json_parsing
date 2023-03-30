import 'package:advance_jason_parsing/screen/album/view/album_screen.dart';
import 'package:advance_jason_parsing/screen/comments/view/comments_screen.dart';
import 'package:advance_jason_parsing/screen/photos/view/photos_screen.dart';
import 'package:advance_jason_parsing/screen/post/view/post_screen.dart';
import 'package:advance_jason_parsing/screen/todos/view/todos_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 01,
            title: Text(
              "Json Parsing",
              style: TextStyle(
                color: Color(0xff734f96),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              padding: EdgeInsets.all(5),
              labelColor: Color(0xff734f96),
              unselectedLabelColor: Color(0xffbf94e4),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xff734f96),width: 1)
              ),
              tabs: [
                Tab(text: "Album"),
                Tab(text: "Comment"),
                Tab(text: "Photos"),
                Tab(text: "Post"),
                Tab(text: "Todos"),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: TabBarView(
            children: [
              AlbumScreen(),
              CommentScreen(),
              PhotosScreen(),
              PostScreen(),
              TodosScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
