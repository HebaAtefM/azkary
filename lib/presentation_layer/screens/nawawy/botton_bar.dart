



import 'package:azkary/presentation_layer/screens/nawawy/hadith_model.dart';
import 'package:azkary/presentation_layer/screens/nawawy/networking_page.dart';
import 'package:flutter/material.dart';

class HadithScreen extends StatefulWidget {
HadithModel hadithModel;
HadithScreen({required this.hadithModel});
  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  bool bol=true;
  bool isclickedcenterfab=false;
  int selectedindex=0;
  String text="";



  @override
  void initState() {

text=widget.hadithModel.textHadith;

    super.initState();
  }

  updateTabSection(int index,String buttontext){
    setState(() {
      selectedindex=index;
    });
    text=buttontext+"\n";
  }

  Widget getwidget(bool bol){
    if(bol){
      return  NetworkingPage(hadith: widget.hadithModel, data: text);
    }
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            getwidget(bol),
          ],
        ),
        // floatingActionButton: FloatingActionButton(onPressed: (){
        //   setState(() {
        //     isclickedcenterfab=!isclickedcenterfab;
        //   });
        //   Share.share(text,subject: widget.hadithModel.textHadith);
        // },child: Icon(Icons.share)
        //   ,),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 100,
              margin: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        //update the bottom app bar view each time an item is clicked
                        onPressed: () {
                          bol = true;
                          updateTabSection(0, widget.hadithModel.textHadith);
                        },
                        iconSize: 27.0,
                        icon: Icon(
                          Icons.book,
                          //darken the icon if it is selected or else give it a different color
                          color: selectedindex == 0
                              ? Colors.yellow
                              : Colors.white,
                        ),
                      ),
                      Text("نص الحديث")
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          bol = true;
                          updateTabSection(1, widget.hadithModel.explanationHadith);
                        },
                        iconSize: 27.0,
                        icon: Icon(
                          Icons.library_books,
                          color: selectedindex == 1
                              ? Colors.deepOrange
                              : Colors.white,
                        ),
                      ),
                      Text("شرح الحديث")

                    ],
                  ),
                  //to leave space in between the bottom app bar items and below the FAB
                  SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          bol = true;
                          updateTabSection(2, widget.hadithModel.translateNarrator);
                        },
                        iconSize: 27.0,

                        icon: Icon(
                          Icons.collections_bookmark,
                          color: selectedindex == 2
                              ? Colors.deepOrange
                              : Colors.white,
                        ),
                      ),
                      Text("التعريف بالراوي")

                    ],
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     bol = false;
                  //     updateTabSection(3,
                  //         widget.hadithModel.key + ' \n' + widget.hadithModel.nameHadith);
                  //   },
                  //   iconSize: 27.0,
                  //   icon: Icon(
                  //     Icons.volume_up,
                  //     color: selectedindex == 3
                  //         ? Colors.deepOrange
                  //         : Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
            //to add a space between the FAB and BottomAppBar
            shape: CircularNotchedRectangle(),
            //color of the BottomAppBar
            color:Colors.green,
          )

      ),
    );
  }
}
