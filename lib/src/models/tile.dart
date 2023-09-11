import 'dart:typed_data';

import 'package:easy_puzzle_game/src/models/position.dart';
import 'package:equatable/equatable.dart';

/// {@template tile}
/// Model for a puzzle tile.
/// {@endtemplate}
class MyTile extends Equatable {
  /// {@macro tile}
  const MyTile({
    required this.value,
    required this.correctPosition,
    required this.currentPosition,
     this.image,
    this.isWhitespace = false,
  });

  /// Value representing the correct position of [MyTile] in a list.
  final int value;

  final Uint8List? image;

  /// The correct 2D [MyPosition] of the [MyTile]. All tiles must be in their
  /// correct position to complete the puzzle.
  final MyPosition correctPosition;

  /// The current 2D [MyPosition] of the [MyTile].
  final MyPosition currentPosition;

  /// Denotes if the [MyTile] is the whitespace tile or not.
  final bool isWhitespace;

  /// Create a copy of this [MyTile] with updated current position.
  MyTile copyWith({required MyPosition currentPosition}) {
    return MyTile(
      value: value,
      correctPosition: correctPosition,
      currentPosition: currentPosition,
      image: image,
      isWhitespace: isWhitespace,
    );
  }

  @override
  List<Object> get props => [
        value,
        correctPosition,
        currentPosition,
        isWhitespace,
      ];
}
