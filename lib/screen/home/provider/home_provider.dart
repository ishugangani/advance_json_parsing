import 'dart:convert';
import 'package:advance_jason_parsing/screen/album/modal/album_modal.dart';
import 'package:advance_jason_parsing/screen/comments/modal/comment_modal.dart';
import 'package:advance_jason_parsing/screen/photos/modal/photos_modal.dart';
import 'package:advance_jason_parsing/screen/post/modal/post_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeProvider extends ChangeNotifier
{
  //ALBUMS
  List<dynamic> AlbumList=[];

  Future<void> albumPrasing() async
  {
    String albumJsonString = await rootBundle.loadString("assets/json/albums.json");
    var albumJson = jsonDecode(albumJsonString);
    List<dynamic> albumJsonList = albumJson.map((e)=>AlbumModal().fromJson(e)).toList();
    AlbumList = albumJsonList;
    notifyListeners();
  }

  //COMMENTS
  List<dynamic> CommentList=[];

  Future<void> commentParsing() async
  {
    String commentJsonString = await rootBundle.loadString("assets/json/comments.json");
    var commentJson =jsonDecode(commentJsonString);
    List<dynamic> commentJsonList = commentJson.map((e)=>CommentModal().fromJson(e)).toList();
    CommentList=commentJsonList;
    notifyListeners();
  }

  //PHOTOS
  List<dynamic> PhotoList=[];

  Future<void> photoParsing() async
  {
    String photoJsonString = await rootBundle.loadString("assets/json/photos.json");
    var photoJson = jsonDecode(photoJsonString);
    List<dynamic> photoJsonList = photoJson.map((e) => PhotosModal().fromJson(e)).toList();
    PhotoList=photoJsonList;
    notifyListeners();
  }

  //POSTS
  List<dynamic> PostList=[];

  Future<void> postParsing() async
  {
    String postJsonString = await rootBundle.loadString("assets/json/post.json");
    var postJson = jsonDecode(postJsonString);
    List<dynamic> postJsonList = postJson.map((e) => PostModal().fromJson(e)).toList();
    PostList=postJsonList;
    notifyListeners();
  }
}