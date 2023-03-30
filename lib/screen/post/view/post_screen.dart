import 'package:advance_jason_parsing/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  HomeProvider? HPTrue,HPFalse;

  @override
  Widget build(BuildContext context) {

    HPTrue=Provider.of<HomeProvider>(context,listen: true);
    HPFalse=Provider.of<HomeProvider>(context,listen: false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${HPTrue!.PostList[index].id}"),
                title: Text("${HPTrue!.PostList[index].title}"),
                subtitle: Text("${HPTrue!.PostList[index].body}"),
                trailing: Text("${HPTrue!.PostList[index].userId}"),
              );
            },
            itemCount: HPTrue!.PostList.length,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                HPFalse!.postParsing();
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xff734f96),
            ),
          ),
        ],
      ),
    );
  }
}
