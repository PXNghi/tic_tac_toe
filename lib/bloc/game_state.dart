
part of 'game_bloc.dart';

abstract class GameState {
  final List<int> tiles;
  final String msg;
  final bool isMe;

  const GameState({
    this.tiles = const <int>[],
    this.msg = "",
    this.isMe = true,
  });
}

class GameInitial extends GameState {}

class GamePlayState extends GameState {
  final List<int> tilesValue;
  final String msgValue;
  final bool isMeStatus;

  GamePlayState({
    required this.tilesValue,
    required this.msgValue,
    required this.isMeStatus,
  }) : super(tiles: tilesValue, msg: msgValue, isMe: isMeStatus);
}
