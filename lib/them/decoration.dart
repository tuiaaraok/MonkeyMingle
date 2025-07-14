import 'them.dart';

BoxDecoration get textFieldDecoration => BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(12.r)),
  border: Border.all(color: containerBorderColor, width: 2.w),
  color: containerTextField,
);
BoxDecoration createBtnDecoration(bool isValid) => BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(60.r)),
  border: Border.all(color: containerBorderColor, width: 2.w),
  color:
      isValid ? containerMainColor : containerMainColor.withValues(alpha: 0.7),
);
BoxDecoration get mainBtnDecoration => BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(60.r)),
  boxShadow: [
    BoxShadow(
      offset: Offset(0, 4.h),
      blurRadius: 4.r,
      color: Colors.black.withValues(alpha: 0.25),
    ),
  ],
  color: containerMainColor,
);
BoxDecoration get cardConainerDecoration => BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(30.r)),
  border: Border.all(color: containerBorderColor, width: 2.w),
  color: containerTextField,
);
