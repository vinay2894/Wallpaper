import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controllers/wallpaper_controller.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
       child: Consumer<wallpapercontroller>(
         builder: (context,pro,_){
           if(pro.allwallpaper.isNotEmpty){
             return Column(
               children: [
                 TextField(
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(25),
                     ),
                   ),
                   onSubmitted: (val){
                     pro.getwallpapers(data: val);
                   },
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Expanded(
                     child: GridView.builder(
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           mainAxisSpacing: 5,
                           crossAxisSpacing: 5,
                           childAspectRatio: 2/4,
                         ),
                         itemCount: pro.allwallpaper.length,
                         itemBuilder: (context,index)=> GestureDetector(
                           onTap: (){
                             Navigator.of(context).pushNamed(
                               'detail_page',
                               arguments: pro.allwallpaper[index],
                             );
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(image: NetworkImage(pro.allwallpaper[index].largeImageUrl),
                                 fit: BoxFit.cover
                               ),
                             ),
                           ),
                         ),
                     ),
                 ),
               ],
             );
           }
           else{
             return Center(
               child: CircularProgressIndicator(),
             );
           }
         },
       ),
      ),
    );
  }
}