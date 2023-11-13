import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keep_klone/domain/entities/note_entity.dart';

void main() {
  test("Should create note entity with normal parameters", () {
    final NoteEntity noteEntity = NoteEntity(
        id: "1",
        title: "some title",
        description: "some description",
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        color: Colors.orange,
        isTickbox: true);

    expect(
        noteEntity,
        NoteEntity(
            id: "1",
            title: "some title",
            description: "some description",
            createdAt: noteEntity.createdAt,
            modifiedAt: noteEntity.modifiedAt,
            color: Colors.orange,
            isTickbox: true));
  });

  test("Should create note entity with all the parameters missing", () {
    final NoteEntity noteEntity = NoteEntity();

    expect(noteEntity.title == "", true);
    expect(noteEntity.description == "", true);
    expect(noteEntity.color == Colors.white, true);
    expect(noteEntity.isTickbox, false);
  });

  test("Two entities created with same parameters should not be equal", () {
    final NoteEntity note1 = NoteEntity();
    final NoteEntity note2 = NoteEntity();

    expect(note1 != note2, true);
  });
}
