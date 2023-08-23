import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/utils/game_utils.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<LoadGame>((event, emit) {
      emit(
        GamePlayState(
          tilesValue: List.filled(9, 0),
          msgValue: GameUtils.initialMsg(),
          isMeStatus: state.isMe,
        ),
      );
    });

    on<PlayerClick>((event, emit) {
      List<int> tile = state.tiles;
      if (tile[event.index] == 0) {
        if (state.isMe) {
          tile[event.index] = 1;
        } else {
          tile[event.index] = 2;
        }
      }
      emit(
        GamePlayState(
          tilesValue: tile,
          msgValue: GameUtils().checkResult(!state.isMe, tile),
          isMeStatus: !state.isMe,
        ),
      );
    });
  }
}
