import 'package:flutter/material.dart';
import 'package:demoapps/utils/navigation.dart';
import 'package:demoapps/utils/routes.dart';
class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("title"),),
        body: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("asset/image/a.jpeg",height: 100,width: 200),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigation.pushNamed(
                      Routes.firstApi,
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
