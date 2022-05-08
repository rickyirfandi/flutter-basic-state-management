import "package:flutter/material.dart";

class Controller {
  ValueNotifier<int> index = ValueNotifier(0);
}

class WithValueNotifier extends StatelessWidget {
  WithValueNotifier({Key? key}) : super(key: key);

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.index.value++,
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
            valueListenable: controller.index,
            builder: (context, data, _) {
              return Text(
                data.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
      ),
    );
  }
}
