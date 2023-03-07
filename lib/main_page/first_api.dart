import 'dart:io';
import 'dart:math';

import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../utils/sizeutils.dart';
import 'controller.dart';

class FirstApi extends StatefulWidget {
  const FirstApi({Key? key}) : super(key: key);

  @override
  State<FirstApi> createState() => _FirstApiState();
}

class _FirstApiState extends State<FirstApi> {
  final FirstApiController firstApiController = Get.put(FirstApiController());
  int index = 0;

  @override
  Widget build(BuildContext context) {
    print(
        "aaaa${firstApiController.firstApiModalController.value?.data?.length}");
    return SafeArea(
      child: Scaffold(
        body:  WillPopScope(
          onWillPop: () {
            return exit(0);
          },
          child: Container(
            height: SizeUtils.horizontalBlockSize * 400,
            width: SizeUtils.verticalBlockSize * 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "asset/image/bg.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Obx(
              () => firstApiController.loding.value == true
                  ? Center(
                    child: Lottie.asset(
                      "asset/image/lottie/loading2.json",
                      width: SizeUtils.verticalBlockSize * 20,
                    ),
                  )
                  : Column(children: [
                      Expanded(
                          child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              Navigation.pushNamed(Routes.viewPage, arg: {
                                "image": firstApiController
                                    .firstApiModalController
                                    .value
                                    ?.data?[index]
                                    .images
                                    ?.jpg
                                    ?.imageUrl,
                                "title": firstApiController
                                    .firstApiModalController
                                    .value
                                    ?.data?[index]
                                    ?.titleEnglish,
                                "desc": firstApiController
                                    .firstApiModalController
                                    .value
                                    ?.data?[index]
                                    .synopsis,
                                "background": firstApiController
                                    .firstApiModalController
                                    .value
                                    ?.data?[index]
                                    .background,
                                "url": firstApiController
                                    .firstApiModalController
                                    .value
                                    ?.data?[index]
                                    .trailer
                                    ?.url,
                              });
                            },
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "${firstApiController.firstApiModalController.value?.data?[index].images?.jpg?.imageUrl}"),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(
                                  top: SizeUtils.horizontalBlockSize * 4),
                              child: Text(
                                  "${firstApiController.firstApiModalController.value?.data?[index]?.titleEnglish}",
                                  style: TextStyle(
                                      fontSize: SizeUtils.fSize_18(),
                                      fontWeight: FontWeight.bold)),
                            ),
                            subtitle: Padding(
                                padding: EdgeInsets.only(
                                    top: SizeUtils.horizontalBlockSize * 3,
                                    bottom: SizeUtils.horizontalBlockSize * 5),
                                child: RichText(
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  strutStyle: StrutStyle(fontSize: 20.0),
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      text:
                                          "${firstApiController.firstApiModalController.value?.data?[index].synopsis}"),
                                ) /*Text(
                            "${firstApiController.firstApiModalController.value?.data?[index].synopsis}"),*/
                                ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            thickness: 1,
                            color: Colors.grey,
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
        ),
      ),
    );
  }
}
