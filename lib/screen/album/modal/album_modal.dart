import 'package:advance_jason_parsing/screen/post/modal/post_modal.dart';

class AlbumModal
{
  int? userId,id;
  String? title;

  AlbumModal({this.userId, this.id, this.title});

  AlbumModal fromJson(Map m1)
  {
    userId=m1['userId'];
    id=m1['id'];
    title=m1['title'];

    AlbumModal a1 = AlbumModal(id: id,title: title,userId: userId);
    return a1;
  }
}