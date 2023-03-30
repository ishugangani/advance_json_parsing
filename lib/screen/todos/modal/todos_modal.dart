class TodosModal
{
  int? id,userId;
  String? title;
  bool? complete;

  TodosModal({this.id, this.userId, this.title, this.complete});

  TodosModal fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];
    complete=m1['complete'];

    TodosModal t1 = TodosModal(userId: userId,id: id,title: title,complete: complete);
    return t1;
  }
}