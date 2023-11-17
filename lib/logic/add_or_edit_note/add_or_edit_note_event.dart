part of 'add_or_edit_note_bloc.dart';

sealed class AddOrEditNoteEvent extends Equatable {
  const AddOrEditNoteEvent();

  @override
  List<Object> get props => [];
}

final class AddOrEditNoteUpdateNote extends AddOrEditNoteEvent {
  final String id;
  final String title;
  final String description;
  final Color color;
  final bool isTickbox;

  const AddOrEditNoteUpdateNote({
    required this.color,
    required this.id,
    required this.title,
    required this.description,
    required this.isTickbox,
  });
}

final class AddOrEditNoteSaveNote extends AddOrEditNoteEvent {
  final String title;
  final String description;
  final Color color;
  final bool isTickbox;

  const AddOrEditNoteSaveNote({
    required this.title,
    required this.description,
    required this.color,
    required this.isTickbox,
  });
}

final class AddOrEditNoteDeleteNote extends AddOrEditNoteEvent {
  final String id;

  const AddOrEditNoteDeleteNote({required this.id});
}
