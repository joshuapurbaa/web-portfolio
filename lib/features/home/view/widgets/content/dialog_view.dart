import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/controllers/controllers.dart';
import 'package:web_portfolio/features/home/data/data.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class DialogView extends StatefulWidget {
  const DialogView({
    required this.portfolio,
    super.key,
  });

  final PortfolioPath portfolio;

  @override
  State<DialogView> createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<HomeProvider>(context, listen: false).changeValue(0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final padding = defaultPadding(context).value;
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
        final mediaQueryW = MediaQuery.of(context).size.width;
        final mediaQueryH = MediaQuery.of(context).size.height;
        final textTheme = Theme.of(context).textTheme;

        return Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return AlertDialog(
              contentPadding: EdgeInsets.only(
                top: padding ?? 15,
                left: padding ?? 15,
                right: padding ?? 15,
              ),
              actionsPadding: EdgeInsets.only(
                right: padding ?? 15,
                bottom: padding ?? 15,
              ),
              title: !notMobile
                  ? Text(
                      widget.portfolio.name,
                      style: textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    )
                  : null,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    provider.changeValue(0);
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    size: iconSize(context).value,
                  ),
                ),
              ],
              content: SizedBox(
                // check to determine alert dialog height and width
                width: mediaQueryW * (notMobile ? 0.75 : 0.90),
                height: mediaQueryH * (notMobile ? 0.85 : 0.70),
                child: ResponsiveRowColumn(
                  rowSpacing: defaultPadding(context).value,
                  layout: notMobile
                      ? ResponsiveRowColumnType.ROW
                      : ResponsiveRowColumnType.COLUMN,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const LeftIconDialogView(),
                            SizedBox(
                              // Check for height and witdth for image page view
                              height: maxHeight * (notMobile ? 0.9 : 0.5),
                              width: maxWidth * (notMobile ? 0.2 : 0.5),
                              child: ScrollConfiguration(
                                behavior:
                                    ScrollConfiguration.of(context).copyWith(
                                  dragDevices: {
                                    PointerDeviceKind.touch,
                                    PointerDeviceKind.mouse,
                                  },
                                ),
                                child: PageView.builder(
                                  controller: provider.dialogViewController,
                                  itemCount: widget.portfolio.path.length,
                                  onPageChanged: (value) {
                                    provider.changeValue(value);
                                  },
                                  itemBuilder: (context, index) {
                                    final onUdemy = widget.portfolio.path[index]
                                        .contains('udemy');
                                    final onBudgetIntelli = widget
                                        .portfolio.path[index]
                                        .contains('budget-intelli');

                                    if (onBudgetIntelli) {
                                      return Image.asset(
                                        widget.portfolio.path[index],
                                        // cacheWidth: onUdemy ? 820 : 388,
                                        // cacheHeight: onUdemy ? 461 : 820,
                                      );
                                    }

                                    return Image.asset(
                                      widget.portfolio.path[index],
                                      cacheWidth: onUdemy ? 820 : 388,
                                      cacheHeight: onUdemy ? 461 : 820,
                                    );
                                  },
                                ),
                              ),
                            ),
                            RightIconDialogView(portfolio: widget.portfolio),
                          ],
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: DialogDescription(
                        portfolio: widget.portfolio,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
