import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/asset_constants.dart';
import 'package:tic_tac_toe/widgets/border_widget.dart';
import 'package:tic_tac_toe/widgets/button_widget.dart';
import 'package:tic_tac_toe/widgets/grid_view.dart';


class WebScreen extends StatelessWidget {
  final List<int>? tiles;
  final double height;
  final double width;
  final String msg;
  final bool isMe;
  const WebScreen(
      {super.key,
      this.tiles,
      required this.height,
      required this.width,
      required this.msg,
      required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backGround),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: GridViewWidget(
              tiles: tiles,
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Spacer(),
                titleWidget(),
                const Spacer(),
                msgWidget(msg),
                const Spacer(),
                buttonWidget(context),
                const Spacer(),
                const Spacer(),
              ],
            )
          ),
        ],
      ),
    );
  }
}
