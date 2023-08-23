part of 'game_bloc.dart';

abstract class GameEvent{}

class LoadGame extends GameEvent {}

class ClearGame extends GameEvent {}

class PlayerClick extends GameEvent {
  final int index;
  PlayerClick({required this.index});
}