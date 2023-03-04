import 'package:demoapps/first_api/first_api.dart';
import 'package:demoapps/login_page/login_page.dart';
import 'package:demoapps/login_page/sign_inpage.dart';
import 'package:demoapps/web_view/web_page.dart';
import 'package:get/get.dart';

import '../second_api/view_page/view_page.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const loginPage = "/LoginPage";
  static const firstApi = "/FirstApi";
  static const signInPage = "/SigninPage";
  static const viewPage = "/ViewPage";
  static const webViewPage = "/webViewPage";

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: loginPage,
      page: () => LoginPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: firstApi,
      page: () => FirstApi(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: signInPage,
      page: () => SigninPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: viewPage,
      page: () => ViewPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: webViewPage,
      page: () => WebViewPage(),
      transition: defaultTransition,
    ),
  ];
}
