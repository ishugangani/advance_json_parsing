import 'package:advance_jason_parsing/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({Key? key}) : super(key: key);

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {

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
            itemCount: HPTrue!.PhotoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${HPTrue!.PhotoList[index].id}"),
                title: Text("${HPTrue!.PhotoList[index].title}"),
                subtitle: Text("${HPTrue!.PhotoList[index].url}"),
                trailing: Text("${HPTrue!.PhotoList[index].albumId}"),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                HPTrue!.photoParsing();
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
