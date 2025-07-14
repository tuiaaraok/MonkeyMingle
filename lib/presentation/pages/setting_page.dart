import 'dart:developer';

import 'package:in_app_review/in_app_review.dart';
import 'package:monkeq/presentation/pages/menu_page.dart';
import 'package:monkeq/them/them.dart';
import 'package:monkeq/presentation/widgets/btn_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BacgroundWidget(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset("assets/menu.png", width: 320.w, height: 374.h),
                  SizedBox(
                    height: 242.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MainBtnWiget(
                          title: "Contact us",
                          onTap: () async {
                            String? encodeQueryParameters(
                              Map<String, String> params,
                            ) {
                              return params.entries
                                  .map(
                                    (MapEntry<String, String> e) =>
                                        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
                                  )
                                  .join('&');
                            }

                            // ···
                            final Uri emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: 'cerenkuskanm@icloud.com',
                              query: encodeQueryParameters(<String, String>{
                                '': '',
                              }),
                            );
                            try {
                              if (await canLaunchUrl(emailLaunchUri)) {
                                await launchUrl(emailLaunchUri);
                              } else {
                                throw Exception(
                                  "Could not launch $emailLaunchUri",
                                );
                              }
                            } catch (e) {
                              log(
                                'Error launching email client: $e',
                              ); // Log the error
                            }
                          },
                        ),
                        MainBtnWiget(
                          title: "Privacy policy",
                          onTap: () async {
                            final Uri url = Uri.parse(
                              'https://docs.google.com/document/d/1lDg0vx1riFkKwSUZaWvQdFUd4u9b7bkl4pau84BtfUo/mobilebasic',
                            );
                            if (!await launchUrl(url)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                        ),
                        MainBtnWiget(
                          title: "Rate us",
                          onTap: () async {
                            InAppReview.instance.openStoreListing(
                              appStoreId: '6748457470',
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: containerMainColor,
                    ),

                    child: Icon(Icons.arrow_back_ios_new, color: iconColorApp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
