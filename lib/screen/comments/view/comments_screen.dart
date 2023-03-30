import 'package:advance_jason_parsing/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {

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
                leading: Text("${HPTrue!.CommentList[index].id}"),
                title: Text("${HPTrue!.CommentList[index].name}"),
                subtitle: Text("${HPTrue!.CommentList[index].email}"),
                trailing: Text("${HPTrue!.CommentList[index].postId}"),
              );
            },
            itemCount: HPTrue!.CommentList.length,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                HPFalse!.commentParsing();
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
