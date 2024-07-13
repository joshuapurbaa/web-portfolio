import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/data/data.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class GridHover extends StatelessWidget {
  const GridHover({
    required this.portfolio,
    super.key,
  });

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (context) => DialogView(
            portfolio: portfolio,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextResponsive(
              textColor: AppPalette.primaryGreen,
              text: portfolio.name,
              style: Theme.of(context).textTheme.titleLarge,
              defVal: 50,
              tabVal: 45,
              mobVal: 30,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.open_in_full_rounded,
              size: iconSize(context).value,
            ),
          ],
        ),
      ),
    );
  }
}
