import 'package:demoapps/first_api/controller.dart';
import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstApi extends StatefulWidget {
  const FirstApi({Key? key}) : super(key: key);

  @override
  State<FirstApi> createState() => _FirstApiState();
}

class _FirstApiState extends State<FirstApi> {
  final FirstApiController firstApiController = Get.put(FirstApiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Column(children: [
            Expanded(
                child: InkWell(
              onTap: () {
                Navigation.pushNamed(
                  Routes.viewPage,
                );
              },
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "${firstApiController.firstApiModalController.value?.data?.first.images?.jpg?.imageUrl}"),
                    ),
                    title: Text(
                        "${firstApiController.firstApiModalController.value?.data?.first.title}"),
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
                itemCount: firstApiController
                        .firstApiModalController.value?.data?.length ??
                    0,
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
