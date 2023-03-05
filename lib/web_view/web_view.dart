import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';
class CommonWebView extends StatefulWidget {


  @override
  _CommonWebViewState createState() => _CommonWebViewState();
}

class _CommonWebViewState extends State<CommonWebView> {
  WebViewController? _controller;
  var apiCheck;

  @override
  Widget build(BuildContext context) {
    apiCheck = Get.arguments;
    print("eeeeeeeeeeee${apiCheck["url"]}");

    return Scaffold(

        body: WebView(
          zoomEnabled: true ,
          initialUrl: apiCheck["url"],//widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
            _controller = webViewController;
          },
        )
    );
  }
}