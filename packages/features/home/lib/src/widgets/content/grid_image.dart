import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../data/portfolio_path_model.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding(context).value),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: AssetImage(
            portfolio.path[0],
            package: 'home',
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
