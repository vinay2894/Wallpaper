import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/wallpaper_controller.dart';
import 'package:wallpaper_app/views/screens/detail_page.dart';
import 'package:wallpaper_app/views/screens/home_page.dart';
import 'package:sizer/sizer.dart';

void main(){
runApp(
 ChangeNotifierProvider(create: (context)=> wallpapercontroller(),child: MyApp(),)

);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          routes: {
            '/': (context) => const home_page(),
            'detail_page': (context) => Detail_Page(),
          },
        );
      },
    );

    // return Responsive(
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       useMaterial3: true,
    //     ),
    //     routes: {
    //       '/': (context)=> const home_page(),
    //       'detail_page':(context)=>Detail_Page(),
    //     },
    //   ),
    // );
  }
}
