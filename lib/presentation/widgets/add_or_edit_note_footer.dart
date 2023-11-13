import 'package:flutter/material.dart';

class AddOrEditNoteFooter extends StatelessWidget {
  const AddOrEditNoteFooter(
      {Key? key, required this.isEditing, required this.lastEdited})
      : super(key: key);

  final bool isEditing;
  final DateTime lastEdited;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [],
    );
  }
}
