import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:wallpaper_app/controllers/wallpaper_controller.dart';
import 'package:wallpaper_app/modals/wallpaper_model.dart';

class Detail_Page extends StatelessWidget {
  const Detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    Wallpaper wallpaper = ModalRoute.of(context)!.settings.arguments as Wallpaper ;
    log("Step: ${Provider.of<wallpapercontroller>(context).step}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail_Page"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.network(
              wallpaper.largeImageUrl,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            child: BackdropFilter(filter: ImageFilter.blur(
              sigmaX: 50,
              sigmaY: 50,
            ),
              ),
            ),
          Column(
            children: [
              Container(
                height: 60.h,
                width: 40.w,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(wallpaper.largeImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Spacer(flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white.withOpacity(0.3),
                      child: Icon(Icons.save,color: Colors.grey,),
                      onPressed: (){},
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white.withOpacity(0.3),
                      child: Icon(Icons.wallpaper,color: Colors.grey,),
                      onPressed: (){},
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white.withOpacity(0.3),
                      child: Icon(Icons.share,color: Colors.grey,),
                      onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ],

      ),
    );
  }
}

/*

 RadioListTile(
              title: const Text("Home Page"),
              value: "Home Screen",
              groupValue: "",
              onChanged: (val){},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              title: const Text("Lock Screen"),
              value: "Lock Screen",
              groupValue: "",
              onChanged: (val){},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              title: const Text("Both Screen"),
              value: "Both Screen",
              groupValue: "",
              onChanged: (val){},
              controlAffinity: ListTileControlAffinity.trailing,
            ),
*/