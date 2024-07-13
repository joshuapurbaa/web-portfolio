import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/data/data.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    required this.portfolio,
    super.key,
  });

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    final padding = defaultPadding(context).value;
    const pathUdemy = 'assets/screenshot/udemy/1.png';
    final onUdemy = pathUdemy == portfolio.path[0];
    final onBudgetIntelli = portfolio.path[0].contains('budget-intelli');

    if (onBudgetIntelli) {
      return Padding(
        padding: EdgeInsets.all(padding ?? 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            portfolio.path[0],
            fit: BoxFit.fitHeight,
            // cacheWidth: onUdemy ? 820 : 388,
            // cacheHeight: onUdemy ? 461 : 820,
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.all(padding ?? 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          portfolio.path[0],
          fit: BoxFit.fitHeight,
          cacheWidth: onUdemy ? 820 : 388,
          cacheHeight: onUdemy ? 461 : 820,
        ),
      ),
    );
  }
}
