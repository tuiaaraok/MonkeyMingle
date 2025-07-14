import 'widget.dart';

// ignore: must_be_immutable
class MainBtnWiget extends StatelessWidget {
  MainBtnWiget({super.key, required this.title, required this.onTap});
  String title;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 314.w,
        height: 70.h,
        decoration: mainBtnDecoration,
        child: Center(child: Text(title, style: textStyleCreateBtn)),
      ),
    );
  }
}

// ignore: must_be_immutable
class CreateBtnWidget extends StatelessWidget {
  CreateBtnWidget({
    super.key,
    required this.isValid,
    this.title = "SAVE",
    required this.onTap,
  });
  String title;
  bool isValid;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 322.w,
        height: 70.h,
        decoration: createBtnDecoration(isValid),
        child: Center(child: Text(title, style: textStyleCreateBtn)),
      ),
    );
  }
}
