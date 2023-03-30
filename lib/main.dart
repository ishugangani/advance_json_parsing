import 'package:advance_jason_parsing/screen/album/view/album_screen.dart';
import 'package:advance_jason_parsing/screen/comments/view/comments_screen.dart';
import 'package:advance_jason_parsing/screen/home/provider/home_provider.dart';
import 'package:advance_jason_parsing/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
        },
      ),
    ),
  );
}