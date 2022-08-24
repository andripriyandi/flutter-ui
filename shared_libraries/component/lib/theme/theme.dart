import 'package:dependencies/flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
// import 'package:dependencies/google_fonts/google_fonts.dart';

// Color
Color kPrimaryColor = const Color(0xff002060);
Color kGreyColor = const Color(0xff5F5F5F);
Color kPrimaryLightColor = const Color(0xff597393);
Color kPrimaryDarkColor = const Color(0xff1D334F);
Color kRedColor = const Color(0xffEB0004);
Color kBlackColor = Colors.black;
Color kWhiteColor = Colors.white;
Color kGreyLightColor = const Color(0xffBEBEBE);
Color kYellowColor = const Color(0xffFFEA00);
Color kOrangeColor = const Color(0xffFF7200);
Color kGreenColor = const Color(0xff007025);
Color kGreenLightColor = const Color(0xffB3FFCB);
Color kCyanColor = const Color(0xff00D9D5);

// TextStyle
TextStyle primaryTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kPrimaryColor,
);
TextStyle primaryLightTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kPrimaryLightColor,
);
TextStyle primaryDarkTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kPrimaryDarkColor,
);
TextStyle greyTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kGreyColor,
);
TextStyle blackTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kBlackColor,
);
TextStyle whiteTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kWhiteColor,
);
TextStyle greyLightTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kGreyLightColor,
);
TextStyle orangeTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kOrangeColor,
);

TextStyle greenTextStyle = TextStyle(
  fontFamily: 'Gilroy',
  color: kGreenColor,
);

// FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// Font Sized
double fontSizeExtraSmall = 10.0.sp;
double fontSizeSmall = 12.0.sp;
double fontSizeMediumSmall = 13.sp;
double fontSizeDefault = 14.0.sp;
double fontSizeLarge = 16.0.sp;
double fontSizeExtraLarge = 18.0.sp;
double fontSizeOverLarge = 24.0.sp;

// Margin
const defaultMargin = 20.0;
double appbarHeight = 60.0;

// Other
List randomColors = [
  Colors.orange[200],
  Colors.blue[200],
  Colors.red[200],
  Colors.pink[200],
  Colors.purple[200],
  Colors.blueGrey[400]
];

Color? getRandomColor() {
  return (randomColors..shuffle()).first;
}
