class PhotosModal
{
  int? albumId,id;
  String? title,url;

  PhotosModal({this.albumId, this.id, this.title, this.url});

  PhotosModal fromJson(Map m1)
  {
    albumId=m1['albumId'];
    id=m1['id'];
    title=m1['title'];
    url=m1['url'];

    PhotosModal p1 = PhotosModal(id: id,url: url,albumId: albumId,title: title);
    return p1;
  }
}