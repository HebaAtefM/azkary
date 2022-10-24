




import 'package:azkary/business_layer/cubit/quraan.dart';
import 'package:azkary/business_layer/states/q.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzkarSabah extends StatefulWidget {
  const AzkarSabah({Key? key}) : super(key: key);

  @override
  State<AzkarSabah> createState() => _AzkarSabahState();
}

class _AzkarSabahState extends State<AzkarSabah> {


  List azkar= [
  "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير",

 "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ .",

 "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. ",

"اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.",

 "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم.",

 "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.",

 "اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور.",

 "أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.",

 "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه.",
"اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ.",
 "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ.",
 "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي.",
"يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ.",

 "أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه.",
"اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.",
 "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق.",
 "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
 "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ.",
 "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ.",
"أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ.",
 "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ.",
 "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا.",
 "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ.",
 "سُبْحـانَ اللهِ وَبِحَمْـدِهِ.",
 "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ",


];
  List count=[
    "1",
    "1",
    "3",
    "4",
    "7",
    "3",
    "1",
    "1",
    "3",
    "3",
    "3",
    "1",
    "3",
    "1",
    "1",
    "3",
    "10",
    "3",
    "3",
    "3",
    "3",
    "1",
    "100",
    "100",
    "100",


  ];


List description=[
  "",
      "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح.",
  "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة.",
  "من قالها أعتقه الله من النار.",
  "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة.",
  "لم يضره من الله شيء.",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",

  "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.",
  "",
  "",
  "",
  "",
  "",

  "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان.",
  "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",
  "مائة حسنة، ومُحيت عنه مائة سيئة، وكانت له حرزاً من الشيطان حتى يمسى.",
];



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>Sebhacubit(),

        child:  BlocBuilder<Sebhacubit,q>(

        builder: (context,state) {
          return
            Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                  body: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                        itemCount: azkar.length,

                        itemBuilder: (context, index) {
                          return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 20,),
                                Container(
                                  width:MediaQuery.of(context).size.width,
                                  height:MediaQuery.of(context).size.height*.55,
                                //  color: Colors.white.withOpacity(.2),

                                  decoration:BoxDecoration(

                                    ),


                                  child: InkWell(
                                    onTap: ()=>    BlocProvider.of<
                                        Sebhacubit>(
                                        context)
                                        .incrementa(),
                                    child: Expanded(

                                        child: Card(
                                          color:     Color(0xFFF88158).withOpacity(.4),

                                         // color: Color(0xFF99BADD),
                                          child: Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Center(child: Text(
                                                    "${azkar[index].toString()}",
                                                    style: TextStyle(fontSize: 20,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight
                                                            .bold),),),
                                                  SizedBox(height: 35,
                                                    child: Text(
                                                      "[تكرر${count[index]}مرات]",
                                                      style: TextStyle(fontSize: 18,
                                                          color: Colors
                                                              .black),),),
                                                  SizedBox(height: 30,),
                                                  Center(child: Text(
                                                    "${description[index]
                                                        .toString()}",
                                                    style: TextStyle(fontSize: 22,
                                                      color: Colors.black,fontWeight: FontWeight.bold),),),
                                                  SizedBox(height: 10,),

                                                  // Row(
                                                  //   mainAxisAlignment: MainAxisAlignment
                                                  //       .center,
                                                  //   children: [
                                                  //
                                                  //     Container(
                                                  //       decoration: BoxDecoration(
                                                  //
                                                  //         //color: Color(0xFFDE3163).withOpacity(.4),
                                                  //
                                                  //
                                                  //
                                                  //         // borderRadius: BorderRadius
                                                  //         //     .circular(30)),
                                                  //       ),
                                                  //       width: 60,
                                                  //       height: 60,
                                                  //       child: FloatingActionButton(
                                                  //         elevation: 0,
                                                  //         backgroundColor:Color(0xFFDE3163).withOpacity(.4),
                                                  //
                                                  //
                                                  //         onPressed: () {
                                                  //           BlocProvider.of<
                                                  //               Sebhacubit>(
                                                  //               context)
                                                  //               .incrementa();
                                                  //           //   setState(() {
                                                  //           //     count[index];
                                                  //           //   });
                                                  //           // },
                                                  //         },
                                                  //         child: Container(
                                                  //           //  color: Colors.deepPurple.withOpacity(.3),
                                                  //           child: Text(BlocProvider
                                                  //               .of<Sebhacubit>(
                                                  //               context)
                                                  //               .counter1
                                                  //               .toString(),
                                                  //               style: TextStyle(
                                                  //                   fontSize: 30)),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //     SizedBox(height: 20,),
                                                  //     Container(
                                                  //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                                  //       width: 80,
                                                  //       height: 60,
                                                  //       // color: Colors.deepPurple.withOpacity(.1),
                                                  //
                                                  //       child: FloatingActionButton(
                                                  //
                                                  //         backgroundColor:Color(0xFF007BA7),
                                                  //
                                                  //         onPressed: () {
                                                  //           BlocProvider.of<
                                                  //               Sebhacubit>(
                                                  //               context).initiala();
                                                  //         },
                                                  //         child: Text("توقف ",
                                                  //           style: TextStyle(
                                                  //               color: Colors
                                                  //                   .white),),),
                                                  //     ),
                                                  //
                                                  //   ],
                                                  // ),

                                                  //
                                                  // Row(
                                                  //   mainAxisAlignment: MainAxisAlignment
                                                  //       .spaceAround,
                                                  //   children: [
                                                  //
                                                  //     Container(
                                                  //       decoration: BoxDecoration(
                                                  //
                                                  //           color: Colors.deepPurple
                                                  //               .withOpacity(.3),
                                                  //
                                                  //
                                                  //
                                                  //           borderRadius: BorderRadius
                                                  //               .circular(120)),
                                                  //
                                                  //       width: 90,
                                                  //       height: 90,
                                                  //       child: FloatingActionButton(
                                                  //         elevation: 0,
                                                  //         backgroundColor: Colors
                                                  //             .deepPurple
                                                  //             .withOpacity(0),
                                                  //
                                                  //
                                                  //         onPressed: () {
                                                  //           BlocProvider.of<
                                                  //               Sebhacubit>(
                                                  //               context)
                                                  //               .incrementa();
                                                  //           //   setState(() {
                                                  //           //     count[index];
                                                  //           //   });
                                                  //           // },
                                                  //         },
                                                  //         child: Container(
                                                  //           //  color: Colors.deepPurple.withOpacity(.3),
                                                  //           child: Text(BlocProvider
                                                  //               .of<Sebhacubit>(
                                                  //               context)
                                                  //               .counter1
                                                  //               .toString(),
                                                  //               style: TextStyle(
                                                  //                   fontSize: 30)),
                                                  //         ),
                                                  //       ),
                                                  //     ),
                                                  //     // Container(
                                                  //     //
                                                  //     //   // width: 260,
                                                  //     //   height: 90,
                                                  //     //   // color: Colors.deepPurple.withOpacity(.1),
                                                  //     //
                                                  //     //   child: FloatingActionButton(
                                                  //     //
                                                  //     //     backgroundColor: Colors
                                                  //     //         .deepPurple
                                                  //     //         .withOpacity(.1),
                                                  //     //     onPressed: () {
                                                  //     //       BlocProvider.of<
                                                  //     //           Sebhacubit>(
                                                  //     //           context).initiala();
                                                  //     //     },
                                                  //     //     child: Text("توقف ",
                                                  //     //       style: TextStyle(
                                                  //     //           color: Colors
                                                  //     //               .white),),),
                                                  //     // ),
                                                  //
                                                  //   ],
                                                  // ),
// Image.asset("images/k.png",width: 20,)

                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),



                              ]
                          );
                        }),
                  )
              ),

            );
        }
      )
    );
  }
}
