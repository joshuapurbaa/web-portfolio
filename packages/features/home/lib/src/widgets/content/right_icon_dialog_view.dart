import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sprung/sprung.dart';

import '../../data/portfolio_path_model.dart';
import '../../providers/home_provider.dart';

class RightIconDialogView extends StatelessWidget {
  const RightIconDialogView({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

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
                provider.controller.nextPage(
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
