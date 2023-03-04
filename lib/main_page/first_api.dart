import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class FirstApi extends StatefulWidget {
  const FirstApi({Key? key}) : super(key: key);

  @override
  State<FirstApi> createState() => _FirstApiState();
}

class _FirstApiState extends State<FirstApi> {
  final FirstApiController firstApiController = Get.put(FirstApiController());
  int index=0;
  @override
  Widget build(BuildContext context) {
    print(
        "aaaa${firstApiController.firstApiModalController.value?.data?.length}");
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Column(children: [
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigation.pushNamed(Routes.viewPage, arg: {
                      "link":
                          "${firstApiController.firstApiModalController.value?.data?[index]}"

                    });
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "${firstApiController.firstApiModalController.value?.data?[index].images?.jpg?.imageUrl}"),
                  ),
                  title: Text(
                      "${firstApiController.firstApiModalController.value?.data?[index]?.titleEnglish}"),
                  subtitle: Text(
                      "${firstApiController.firstApiModalController.value?.data?[index].synopsis}"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 2,
                  color: Colors.black,
                );
              },
              // itemCount: 6,
              itemCount: firstApiController
                      .firstApiModalController.value?.data?.length ??
                  0,
            )),
          ]),
        ),
      ),
    );
  }
}
