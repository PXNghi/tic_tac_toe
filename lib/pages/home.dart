import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/bloc/game_bloc.dart';
import 'package:tic_tac_toe/pages/mobile_view/mobile.dart';
import 'package:tic_tac_toe/pages/web_view/web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          if (state is GameInitial) {
            context.read<GameBloc>().add(LoadGame());
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MobileScreen(
                  tiles: state.tiles,
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  msg: state.msg,
                  isMe: state.isMe,
                );
              }
              return WebScreen(
                tiles: state.tiles,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                msg: state.msg,
                isMe: state.isMe,
              );
            });
          }
        },
      ),
    );
  }
}
