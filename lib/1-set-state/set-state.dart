import "package:flutter/material.dart";

class Controller {
  int index = 0;
}

class SetState extends StatefulWidget {
  const SetState({Key? key}) : super(key: key);

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            controller.index++;
          });
        },
      ),
      body: Center(
          child: Text(
        controller.index.toString(),
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
