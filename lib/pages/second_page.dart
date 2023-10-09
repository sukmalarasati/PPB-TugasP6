import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  GoRouterState state;
  SecondPage(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    String title = "";
    print(this.state);
    if (this.state.pathParameters.containsKey("title"))
      title = this.state.pathParameters["title"]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop(true);
          },
          child: const Text("Back to main page"),
        ),
      ),
    );
  }
}
