



import 'package:azkary/presentation_layer/screens/nawawy/botton_bar.dart';
import 'package:azkary/presentation_layer/screens/nawawy/database.dart';
import 'package:azkary/presentation_layer/screens/nawawy/hadith_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondHadith extends StatefulWidget {
  const SecondHadith({Key? key}) : super(key: key);

  @override
  State<SecondHadith> createState() => _SecondHadithState();
}

class _SecondHadithState extends State<SecondHadith> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Stack(
              children: [
                SvgPicture.asset("images/background.svg", width: double.infinity,
                  fit: BoxFit.cover,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(""),
                        SvgPicture.asset("images/logo.svg"),
                        //  SvgPicture.asset("images/logo.svg"),
                        Icon(Icons.arrow_forward_ios_rounded),


                      ],
                    ),
                  ],
                )
              ],
            ), flex: 1,),
            Expanded(child: Stack(
              children: [
                SvgPicture.asset("images/background.svg", width: double.infinity,
                  fit: BoxFit.cover,),
                FutureBuilder(builder: (ctx, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20
                        ),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          HadithModel item = snapshot.data![index];
                          return  GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HadithScreen( hadithModel: item,)));
                              },
                              child: Aya(item.key, item.nameHadith));
                        });
                  } else {
                    return Container();
                  }
                }, future: Mydatabase.getAllHadith(),)

              ],
            ), flex: 3,),

          ],
        ),
      ),
    );
  }


  Widget Aya(String key, name) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset("images/img.png"),
Container(color: Colors.blueGrey.withOpacity(.7),),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(key, style: TextStyle(color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),),
            Text(name, style: TextStyle(color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
          ],
        )
      ],
    );
  }

//
// RichText myText(BuildContext context,String text)
// {
//   text=text.replaceAll("(", "{");
//   text=text.replaceAll(")", "}");
//   List<String> split=text.split(RegExp("{"));
//   List<String> hadiths=split.getRange(1, split.length).fold([], (t,e) {
//     var texts=e.split("}");
//   if (texts.length>1){
//     return List.from(t)..addAll(["{${texts.first}","{${e.substring(texts.first.length)}"]);
//   }else{
//     return List.from(t)..add("{${texts.first}");
//   }
//   });
//
//
//
//
// }
}