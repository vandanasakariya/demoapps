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

  var one = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "${firstApiController.firstApiModalController.value?.data?[index].images?.jpg?.imageUrl}"),
            ),
          ],
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
