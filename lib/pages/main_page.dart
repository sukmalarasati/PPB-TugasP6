import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              context
                  .push<bool>(Uri(path: '/second/Second Page :)').toString());
            },
            child: const Text("Go to second page"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              context.push<bool>(Uri(path: '/third').toString());
            },
            child: const Text("Go to third page"),
          ),
        ])));
  }
}
