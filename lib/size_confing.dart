import 'package:flutter/material.dart';

class Size_Confing{
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizerHorizontal;
  static double? blockSizerVertical;

  void init(BuildContext context){
    mediaQueryData=MediaQuery.of(context);
    screenWidth=mediaQueryData?.size.width;
    screenHeight=mediaQueryData?.size.height;
    blockSizerHorizontal=(screenWidth!/100);
    blockSizerVertical=(screenHeight!/100);

  }

}