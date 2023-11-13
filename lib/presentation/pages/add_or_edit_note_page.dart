import 'package:flutter/material.dart';

class AddOrEditNotePage extends StatelessWidget {
  const AddOrEditNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            //TODO: Pin note on pressed
            }, icon: const Icon(Icons.pin))
        ],
      ),
      body: SafeArea(child: Stack(
        children: [
          //note widget
          Positioned(
            bottom: 0.0,
            child: Container()),
        ],
      )),
    );
  }
}
