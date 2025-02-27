import 'package:carter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:carter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:flutter/material.dart';


class ETopHeader extends StatelessWidget {
  const ETopHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: CarterPalette.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularCont(
                  backgroundColor: CarterPalette.textWhite.withOpacity(0.1),
                  padding: EdgeInsets.zero,
                  radius: 400,

                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularCont(
                  backgroundColor: CarterPalette.textWhite.withOpacity(0.1),
                  padding: EdgeInsets.zero,
                  radius: 400,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}