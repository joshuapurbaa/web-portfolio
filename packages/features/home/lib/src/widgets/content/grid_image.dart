import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'package:home/src/data/portfolio_path_model.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    required this.portfolio, super.key,
  });

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    final padding = defaultPadding(context).value;
    return Padding(
      padding: EdgeInsets.all(padding ?? 15),
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
