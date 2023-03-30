class CommentModal
{
  int? postId,id;
  String? name,email;

  CommentModal({this.postId, this.id, this.name, this.email});

  CommentModal fromJson(Map m1)
  {
    postId=m1['postId'];
    id=m1['id'];
    name=m1['name'];
    email=m1['email'];

    CommentModal c1=CommentModal(id: id,name: name,email: email,postId: postId);
    return c1;
  }
}