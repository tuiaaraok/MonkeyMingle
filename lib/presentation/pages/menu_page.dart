import 'package:monkeq/presentation/pages/my_pets_page.dart';
import 'package:monkeq/presentation/pages/new_pets_page.dart';
import 'package:monkeq/presentation/pages/setting_page.dart';
import 'package:monkeq/them/them.dart';

import 'package:monkeq/presentation/widgets/btn_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BacgroundWidget(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/menu.png", width: 320.w, height: 374.h),
              SizedBox(
                height: 242.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainBtnWiget(
                      title: "My pets",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder:
                                (BuildContext context) => const MyPetsPage(),
                          ),
                        );
                      },
                    ),
                    MainBtnWiget(
                      title: "Add a pet",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder:
                                (BuildContext context) => const NewPetsPage(),
                          ),
                        );
                      },
                    ),
                    MainBtnWiget(
                      title: "Settings",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder:
                                (BuildContext context) => const SettingPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BacgroundWidget extends StatelessWidget {
  BacgroundWidget({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
