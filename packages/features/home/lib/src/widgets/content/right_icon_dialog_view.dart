import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/data/portfolio_path_model.dart';
import 'package:home/src/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:sprung/sprung.dart';

class RightIconDialogView extends StatelessWidget {
  const RightIconDialogView({
    required this.portfolio, super.key,
  });

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          width: iconSize(context).value,
          child: Visibility(
            visible: provider.activeIndex == portfolio.path.length - 1
                ? false
                : true,
            child: IconButton(
              onPressed: () {
                provider.dialogViewController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Sprung.criticallyDamped,
                );
              },
              icon: Icon(
                Icons.chevron_right_rounded,
                size: iconSize(context).value,
              ),
            ),
          ),
        );
      },
    );
  }
}
