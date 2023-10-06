import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/wallpaper_model.dart';

class Apihelper{

  Apihelper._();

  static final Apihelper apihelper = Apihelper._();

  String api = "https://pixabay.com/api/?key=39807838-b5e75a55abb8b2b55603b9cd3";

  Future<List<Wallpaper>?> getAllData({String searchData = ""}) async{
    http.Response response = await http.get(Uri.parse("$api&q=$searchData")
    );

    if(response.statusCode == 200){
      Map data = jsonDecode(response.body);
      List allData = data['hits'];

      List<Wallpaper> allwallpaper = allData.map((e) => Wallpaper.fromMap(e)).toList();

      return allwallpaper;
    }
    else{
      return null;
    }
  }
  }