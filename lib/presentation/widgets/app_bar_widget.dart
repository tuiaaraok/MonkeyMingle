import 'widget.dart';

// ignore: must_be_immutable
class AddMainAppBar extends StatelessWidget {
  AddMainAppBar({
    super.key,
    this.iconSize = 30,
    required this.title,
    required this.onTap,
  });
  String title;
  int iconSize;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,

      color: containerMainColor,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ).copyWith(top: MediaQuery.paddingOf(context).top),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: iconColorApp,
              size: iconSize.w,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: iconSize.w),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: textStyleAppBar,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
