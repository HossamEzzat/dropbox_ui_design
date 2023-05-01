import 'package:dropbox_ui_design/size_confing.dart';
import 'package:flutter/material.dart';

import 'appstyle.dart';

class HomeScreen extends StatelessWidget {


 List<Color>textcolor=[
   Colors.blue,
   Colors.yellow,
   Colors.red,
   Colors.green,
 ];
 List<Color>folderscolor=[
   Color(0xffEEF7FE),
   Color(0xffFFFBEC),
   Color(0xffFEEEEE),
  Color(0xffF0FFFF)
 ];

  @override
  Widget build(BuildContext context) {
    Size_Confing().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kpaddinghori),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your drobbox",
                  style: kQuestrialSemibold.copyWith(
                    color: kBlackColor,
                    fontSize: Size_Confing.blockSizerHorizontal! * 6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset("assets/menu_icon.png")),
                ),
              ],
            ),
            SizedBox(
              height: Size_Confing.blockSizerVertical! * 4,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    )),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1,
                      color: kGreyColor,
                    )),
                prefixIcon: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.search_rounded,
                  ),
                ),
                hintText: "Search folder",
                hintStyle: kQuestrialmeduim.copyWith(
                  fontSize: Size_Confing.blockSizerHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              style: kQuestrialmeduim.copyWith(
                fontSize: Size_Confing.blockSizerHorizontal! * 4,
                color: kDarkGreyColor,
              ),
            ),
            SizedBox(
              height: Size_Confing.blockSizerVertical! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recent",
                      style: kQuestrialSemibold.copyWith(
                        fontSize: Size_Confing.blockSizerHorizontal! * 6,
                        color: kLigBlackColor,
                      ),
                    ),
                    SizedBox(
                      width: Size_Confing.blockSizerHorizontal! * 2.5,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/arrowdoenicon.png')),
                  ],
                ),
                Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/sorticon.png')),
              ],
            ),
            SizedBox(height: Size_Confing.blockSizerVertical! * 4),
            GridView.builder(
              shrinkWrap: true,

              itemCount: folderscolor.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.5 * Size_Confing.blockSizerHorizontal! * 6),
                  decoration: BoxDecoration(
                      color: folderscolor[index],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/foldericonblue.png")),
                          Container(
                              height: 25,
                              width: 25,
                              child: Image.asset("assets/more.png")),
                        ],
                      ),
                  SizedBox(height: Size_Confing.blockSizerVertical!*2),
                      Text(
                        "Mobile apps",
                        style: kQuestrialSemibold.copyWith(
                          fontSize: Size_Confing.blockSizerHorizontal! * 4,
                          color:textcolor[index]
                        ),
                      ),
                      SizedBox(height: Size_Confing.blockSizerVertical!*0.4),
                      Text(
                        "25/jan/2023",
                        style: kQuestrialSemibold.copyWith(
                          fontSize: Size_Confing.blockSizerHorizontal! * 2.5,
                          color: textcolor[index]
                        ),
                      ),

                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 107,
                crossAxisCount: 2,
                crossAxisSpacing: Size_Confing.blockSizerHorizontal! * 2,
                mainAxisSpacing: Size_Confing.blockSizerHorizontal! * 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
