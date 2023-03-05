import 'package:demoapps/utils/sizeutils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_page/controller.dart';
import '../utils/navigation.dart';
import '../utils/routes.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final FirstApiController firstApiController = Get.find();

  // final FirstApiController firstApiController = Get.put(FirstApiController());

  var apiCheck;

  @override
  Widget build(BuildContext context) {
    apiCheck = Get.arguments;
    print("aaaaaaaa${apiCheck["check"]}");

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/image/bg.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.verticalBlockSize * 2,
                  vertical: SizeUtils.horizontalBlockSize * 10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: SizeUtils.horizontalBlockSize * 20,
                    backgroundImage: NetworkImage("${apiCheck["image"]}"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 5),
                    child: Text("${apiCheck["title"]}",
                        style: TextStyle(
                            fontSize: SizeUtils.fSize_25(),
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 3),
                    child: Text("${apiCheck["desc"]}",style: TextStyle(
                        fontSize: SizeUtils.fSize_14(),
                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigation.pushNamed(Routes.webView, arg: {
                            "url": "${apiCheck["url"]}",
                          });
                        },
                        child: Padding(
                          padding:  EdgeInsets.all(8),
                          child: Text(
                            "Trailer",
                            style: TextStyle(fontSize: SizeUtils.fSize_15()),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:demoapps/utils/sizeutils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main_page/controller.dart';


class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final FirstApiController firstApiController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(radius: SizeUtils.horizontalBlockSize*8,
                        backgroundImage: NetworkImage(
                            "${firstApiController.secondApiModalController.value?.data?.images?.jpg?.imageUrl}"),
                      ),
                      title: Text(
                          "${firstApiController.secondApiModalController.value?.data?.title}"),
                      subtitle: Text(
                          "${firstApiController.firstApiModalController.value?.data?.first.synopsis}"),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: 2,
                      color: Colors.black,
                    );
                  },
                  // itemCount: 6,
                  itemCount: firstApiController.secondApiModalController
                          .value?.data?.title?.length ??
                      0,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigation.pushNamed(
                      Routes.webViewPage,
                    );
                  },
                  child: Text("View more"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
