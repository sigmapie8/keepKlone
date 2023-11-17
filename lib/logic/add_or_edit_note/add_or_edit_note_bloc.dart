import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:keep_klone/domain/entities/note_entity.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'add_or_edit_note_event.dart';
part 'add_or_edit_note_state.dart';

class AddOrEditNoteBloc extends Bloc<AddOrEditNoteEvent, AddOrEditNoteState> {
  AddOrEditNoteBloc() : super(const AddOrEditNoteInitial(false, false, "")) {
    on<AddOrEditNoteSaveNote>((event, emit) {
      emit(const AddOrEditNoteLoading(true, false, ""));

      NoteEntity noteEntity = NoteEntity(
          title: event.title,
          description: event.description,
          color: event.color,
          isTickbox: event.isTickbox);

      log("Note Entity saved.");

      //TODO: Save note to database
      //TODO: Save note in cloud

      emit(const AddOrEditNoteLoaded(false, false, "Note saved successfully"));
    }, transformer: droppable());

    on<AddOrEditNoteUpdateNote>(
      (event, emit) {
        emit(const AddOrEditNoteLoading(true, false, ""));

        NoteEntity noteEntity = NoteEntity(
          id: event.id,
          title: event.title,
          description: event.description,
          color: event.color,
          isTickbox: event.isTickbox,
        );

        log("Note Entity Edited");

        //TODO: update note in the database
        //TODO: update note in the cloud

        emit(
            const AddOrEditNoteLoaded(false, false, "Note saved successfully"));
      },
      transformer: restartable(),
    );

    on<AddOrEditNoteDeleteNote>((event, emit) {
      emit(const AddOrEditNoteLoading(true, false, ""));

      //TODO: delete note in the database
      //TODO: delete note in the cloud

      log("Note Entity deleted");
      emit(
          const AddOrEditNoteLoaded(false, false, "Note deleted successfully"));
    }, transformer: droppable());
  }
}
