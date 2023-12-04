import 'package:flutter/material.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/containers/circular_container.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:hamara_shop/utils/constants/colors.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UCurveEdgeWidget(
      child: Container(
        color: UColor.primary,
        padding: const EdgeInsets.only(bottom: 0),
        /// -- if[size.isFinite*: is not ture. in Stack] error occurred -> Read README.md file at )
          child: Stack(
            children: [
              /// -- Background custom Shapes
              Positioned(
                  top: -150,
                  right: -250,
                  child: UCircularContainer(
                    backgorundColor: UColor.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: UCircularContainer(
                    backgorundColor: UColor.textWhite.withOpacity(0.1),
                  ),
                ),
                child
                
            ],
          ),
      ),
    );
  }
}
