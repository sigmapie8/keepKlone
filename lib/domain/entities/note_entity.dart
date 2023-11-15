import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NoteEntity extends Equatable {
  final String id;
  String title;
  String description;
  final DateTime createdAt;
  DateTime modifiedAt;
  Color color;
  bool isTickbox;

  //TODO: Add support for backgrounds
  //TODO: Add support for photos
  //TODO: Add support for drawings
  //TODO: Add support for recordings

  NoteEntity(
      {String? id,
      this.title = "",
      this.description = "",
      DateTime? createdAt,
      DateTime? modifiedAt,
      this.color = Colors.white,
      this.isTickbox = false})
      : id = id ?? UniqueKey().toString(),
        createdAt = createdAt ?? DateTime.now(),
        modifiedAt = modifiedAt ?? DateTime.now();

  @override
  List<Object?> get props => [title, description, createdAt, color];

  @override
  bool get stringify => true;
}
