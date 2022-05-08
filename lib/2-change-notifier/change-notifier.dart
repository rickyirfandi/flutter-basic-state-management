import "package:flutter/material.dart";

class Controller extends ChangeNotifier {
  int index = 0;

  void updateData() {
    index++;
    notifyListeners();
  }
}

class WithChangeNotifier extends StatefulWidget {
  const WithChangeNotifier({Key? key}) : super(key: key);

  @override
  State<WithChangeNotifier> createState() => _WithChangeNotifierState();
}

class _WithChangeNotifierState extends State<WithChangeNotifier> {
  Controller controller = Controller();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.updateData(),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.removeListener(() {}),
          child: Text(
            controller.index.toString(),
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }
}
