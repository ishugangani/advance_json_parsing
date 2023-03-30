class PostModal
{
  int? id,userId;
  String? title,body;

  PostModal({this.id, this.userId, this.title, this.body});

  PostModal fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];
    body=m1['body'];

    PostModal p1 = PostModal(title: title,id: id,body: body,userId: userId);
    return p1;
  }
}