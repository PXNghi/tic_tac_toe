import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/bloc/game_bloc.dart';
import 'package:tic_tac_toe/constants/asset_constants.dart';
import 'package:tic_tac_toe/widgets/border_widget.dart';

class GridViewWidget extends StatefulWidget {
  final List<int>? tiles;
  const GridViewWidget({super.key, this.tiles});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        crossAxisCount: 3,
        childAspectRatio: 1.1,
        shrinkWrap: true,
        children: [
          for (int i = 0; i < 9; i++)
            Container(
              decoration: BoxDecoration(border: borderFunc(i)),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {
                    context.read<GameBloc>().add(PlayerClick(index: i));
                  },
                  child: Center(
                    child: widget.tiles?[i] == 0
                        ? SizedBox()
                        : Image.asset(
                            widget.tiles?[i] == 1 ? playerImage1 : playerImage2,
                            scale: 1.5,
                          ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
