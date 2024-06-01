import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:sprung/sprung.dart';

class LeftIconDialogView extends StatelessWidget {
  const LeftIconDialogView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          width: iconSize(context).value,
          child: Visibility(
            visible: provider.activeIndex == 0 ? false : true,
            child: IconButton(
              onPressed: () {
                provider.dialogViewController.previousPage(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  curve: Sprung.criticallyDamped,
                );
              },
              icon: Icon(
                Icons.chevron_left_rounded,
                size: iconSize(context).value,
              ),
            ),
          ),
        );
      },
    );
  }
}
