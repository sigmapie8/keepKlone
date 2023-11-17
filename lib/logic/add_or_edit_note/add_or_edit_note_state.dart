part of 'add_or_edit_note_bloc.dart';

sealed class AddOrEditNoteState extends Equatable {
  const AddOrEditNoteState(
    this.loading,
    this.error,
    this.message,
  );

  final bool loading;
  final bool error;
  final String message;

  @override
  List<Object> get props => [loading, error, message];

  @override
  String toString() {
    return '''AddOrEditNoteState { loading: $loading, error: $error, message: $message}''';
  }
}

final class AddOrEditNoteInitial extends AddOrEditNoteState {
  const AddOrEditNoteInitial(
    super.loading,
    super.error,
    super.message,
  );
}

final class AddOrEditNoteLoading extends AddOrEditNoteState {
  const AddOrEditNoteLoading(
    super.loading,
    super.error,
    super.message,
  );
}

final class AddOrEditNoteError extends AddOrEditNoteState {
  const AddOrEditNoteError(
    super.loading,
    super.error,
    super.message,
  );
}

final class AddOrEditNoteLoaded extends AddOrEditNoteState {
  const AddOrEditNoteLoaded(
    super.loading,
    super.error,
    super.message,
  );
}
