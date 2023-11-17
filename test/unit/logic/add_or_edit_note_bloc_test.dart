import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:keep_klone/logic/add_or_edit_note/add_or_edit_note_bloc.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("[AddOrEditBloc]:", () {
    blocTest<AddOrEditNoteBloc, AddOrEditNoteState>(
      "Save Note ",
      build: () => AddOrEditNoteBloc(),
      act: (bloc) => bloc.add(const AddOrEditNoteSaveNote(
          title: "Note 1",
          description: "",
          isTickbox: false,
          color: Colors.yellow)),
      wait: const Duration(seconds: 1),
      expect: () => const [
        AddOrEditNoteLoading(true, false, ""),
        AddOrEditNoteLoaded(false, false, "Note saved successfully"),
      ],
    );

    blocTest<AddOrEditNoteBloc, AddOrEditNoteState>(
      "Edit Note ",
      build: () => AddOrEditNoteBloc(),
      seed: () =>
          const AddOrEditNoteLoaded(false, false, "Note saved successfully"),
      act: (bloc) => bloc.add(const AddOrEditNoteUpdateNote(
          color: Colors.green,
          id: "1",
          title: "Edited Note 1",
          description: "",
          isTickbox: false)),
      wait: const Duration(seconds: 1),
      expect: () => const [
        AddOrEditNoteLoading(true, false, ""),
        AddOrEditNoteLoaded(false, false, "Note saved successfully")
      ],
    );

    blocTest<AddOrEditNoteBloc, AddOrEditNoteState>(
      "Delete Note ",
      build: () => AddOrEditNoteBloc(),
      seed: () =>
          const AddOrEditNoteLoaded(false, false, "Note saved successfully"),
      act: (bloc) => bloc.add(const AddOrEditNoteDeleteNote(id: "1")),
      wait: const Duration(seconds: 1),
      expect: () => const [
        AddOrEditNoteLoading(true, false, ""),
        AddOrEditNoteLoaded(false, false, "Note deleted successfully")
      ],
    );
  });
}
