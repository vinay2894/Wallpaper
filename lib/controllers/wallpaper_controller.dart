import 'dart:developer';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/cupertino.dart';
import 'package:wallpaper_app/helper/api_helper.dart';

import '../modals/wallpaper_model.dart';

class wallpapercontroller extends ChangeNotifier{
  List<Wallpaper> allwallpaper = [];

  int type = AsyncWallpaper.HOME_SCREEN;
  String step = "not";
  bool done = false;

  wallpapercontroller(){
    getwallpapers();
  }

  ontypechanged({required int type}){
    reset();
    this.type = type;
    notifyListeners();
  }

  reset(){
    step = "not";
    notifyListeners();
  }

  process(){
    step = "process";
    notifyListeners();
  }

  setwallpaper({required String url}) async {
     step = "process";
     log("Step: $step");
     notifyListeners();
    done = await AsyncWallpaper.setWallpaper(url: url,
      wallpaperLocation: type,
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    );
    step = "done";
    log("Step: $step");
    notifyListeners();
  }

  getwallpapers({String data = ""}) async{
    log("Getting data...");
    allwallpaper = await Apihelper.apihelper.getAllData(searchData: data) ?? [];
    log("DATA: $allwallpaper");
    notifyListeners();
  }
}