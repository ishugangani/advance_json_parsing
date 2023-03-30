import 'package:advance_jason_parsing/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {

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
            itemCount: HPTrue!.AlbumList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${HPTrue!.AlbumList[index].id}"),
                title: Text("${HPTrue!.AlbumList[index].title}"),
                subtitle: Text("${HPTrue!.AlbumList[index].userId}"),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                HPFalse!.albumPrasing();
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
