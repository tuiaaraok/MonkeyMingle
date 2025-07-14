import 'them.dart'; // или напрямую my_color.dart, если нужны цвета

TextStyle get textStyleField => TextStyle(
  fontSize: 22.sp,
  fontWeight: FontWeight.w500,
  color: textFieldColor,
);
TextStyle get textStyleFieldHint =>
    TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500, color: hintColor);

TextStyle get textStyleFieldTitle => TextStyle(
  fontSize: 22.sp,
  fontWeight: FontWeight.w500,
  color: textFieldColor,
);
TextStyle get textStyleInformationTitle => TextStyle(
  fontSize: 18.sp,
  fontWeight: FontWeight.w700,
  color: textInformationColor,
);
TextStyle get textStyleAppBar => TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.w800,
  color: textAppBarColor,
);
TextStyle get textStyleInformationSubTitle => TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: textInformationColor,
);

TextStyle get textStyleCreateBtn => TextStyle(
  fontSize: 26.sp,
  fontWeight: FontWeight.w900,
  color: textCreateBtnColor,
);
