import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/bloc/color_bloc.dart';

class Screen22 extends StatefulWidget {
  const Screen22({Key? key}) : super(key: key);

  @override
  State<Screen22> createState() => _Screen22State();
}

class _Screen22State extends State<Screen22> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.toAmber);
              },
              backgroundColor: Colors.amber,
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.toLightBlue);
              },
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
        body: Center(
          child: StreamBuilder(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 100,
                    height: 100,
                    color: snapshot.data as Color);
              }),
        ),
      ),
    );
  }
}
