import 'dart:async';

import "package:flutter/material.dart";

class Controller {
  int index = 0;
  StreamController<int> streams = StreamController();

  void updateData() {
    streams.sink.add(index++);
  }
}

class WithStreamBuilder extends StatelessWidget {
  WithStreamBuilder({Key? key}) : super(key: key);

  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.updateData();
        },
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: controller.streams.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return Text(
                snapshot.data!.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
