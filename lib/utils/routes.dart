import 'package:demoapps/login_page/login_page.dart';
import 'package:demoapps/login_page/sign_inpage.dart';
import 'package:demoapps/web_view/web_view.dart';
import 'package:get/get.dart';

import '../main_page/first_api.dart';
import '../more_info/view_page.dart';


mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const loginPage = "/LoginPage";
  static const firstApi = "/FirstApi";
  static const signInPage = "/SigninPage";
  static const viewPage = "/ViewPage";
  static const webView = "/WebView";

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
      name: webView,
      page: () => CommonWebView(),
      transition: defaultTransition,
    ),

  ];
}
