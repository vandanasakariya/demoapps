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
        body: Column(children: [
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
                  leading: CircleAvatar(),
                  title: Text("GTS"),
                  // Text("${firstApiController.firstApiModalController.value?.data?[index].title}"),
                  subtitle: Text(
                      "This site uses cookies from Google to deliver and enhance the quality of its services and to analyze traffic."), // Text("${firstApiController.firstApiModalController.value?.data?[index].synopsis}"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 2,
                  color: Colors.black,
                );
              },
              itemCount: 6,
              // itemCount: firstApiController
              //         .firstApiModalController.value?.data?.length ??
              //     0,
            ),
          )),
        ]),
      ),
    );
  }
}
