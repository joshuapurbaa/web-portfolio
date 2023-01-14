import 'package:core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sprung/sprung.dart';

import '../constants/constants.dart';
import '../data/portfolio_path.dart';
import 'widgets.dart';

class DialogView extends StatefulWidget {
  const DialogView({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  final PortfolioPath portfolio;

  @override
  State<DialogView> createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  int activeIndex = 0;

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        final isDesktop = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
        final mediaQueryW = MediaQuery.of(context).size.width;
        final mediaQueryH = MediaQuery.of(context).size.height;
        final textTheme = Theme.of(context).textTheme;

        return AlertDialog(
          contentPadding: EdgeInsets.only(
            top: defaultPadding(context).value,
            left: defaultPadding(context).value,
            right: defaultPadding(context).value,
          ),
          actionsPadding: EdgeInsets.only(
            right: defaultPadding(context).value,
            bottom: defaultPadding(context).value,
          ),
          title: !isDesktop
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
              },
              icon: Icon(
                Icons.close_rounded,
                size: iconSize(context).value,
              ),
            )
          ],
          content: SizedBox(
            // check to determine alert dialog height and width
            width: mediaQueryW * (isDesktop ? 0.75 : 0.90),
            height: mediaQueryH * (isDesktop ? 0.85 : 0.60),
            child: ResponsiveRowColumn(
              rowSpacing: defaultPadding(context).value,
              layout: isDesktop
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              columnVerticalDirection: VerticalDirection.down,
              children: [
                ResponsiveRowColumnItem(
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: iconSize(context).value,
                          child: Visibility(
                            visible: activeIndex == 0 ? false : true,
                            child: IconButton(
                              onPressed: () {
                                _controller.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Sprung.criticallyDamped,
                                );
                              },
                              icon: Icon(
                                Icons.chevron_left_rounded,
                                size: iconSize(context).value,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          // Check for height and witdth for image page view
                          height: maxHeight * (isDesktop ? 0.9 : 0.5),
                          width: maxWidth * (isDesktop ? 0.2 : 0.5),
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                              dragDevices: {
                                PointerDeviceKind.touch,
                                PointerDeviceKind.mouse,
                              },
                            ),
                            child: PageView.builder(
                              controller: _controller,
                              itemCount: widget.portfolio.path.length,
                              onPageChanged: (value) {
                                setState(() {
                                  activeIndex = value;
                                });
                              },
                              itemBuilder: (context, index) {
                                return Image(
                                  image: AssetImage(
                                    widget.portfolio.path[index],
                                    package: 'home',
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: iconSize(context).value,
                          child: Visibility(
                            visible:
                                activeIndex == widget.portfolio.path.length - 1
                                    ? false
                                    : true,
                            child: IconButton(
                              onPressed: () {
                                _controller.nextPage(
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
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextResponsive(
                          textColor: AppPalette.primaryGreen,
                          text: 'Features:',
                          style: textTheme.bodyLarge,
                          defVal: 30,
                          tabVal: 25,
                          mobVal: 17,
                          maxLines: 5,
                          textAlign: TextAlign.left,
                        ),
                        TextResponsive(
                          textColor: AppPalette.primaryGreen,
                          text: widget.portfolio.description,
                          style: textTheme.bodyLarge,
                          defVal: 30,
                          tabVal: 25,
                          mobVal: 17,
                          maxLines: 5,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: defaultPadding(context).value,
                        ),
                        TextResponsive(
                          textColor: AppPalette.primaryGreen,
                          text: 'Tags:',
                          style: Theme.of(context).textTheme.bodyLarge,
                          defVal: 30,
                          tabVal: 25,
                          mobVal: 17,
                          maxLines: 5,
                          textAlign: TextAlign.left,
                        ),
                        Wrap(
                          spacing: littleSpace(context, 5, 3, 2).value,
                          runSpacing: littleSpace(context, 5, 3, 2).value,
                          children: List.generate(
                            widget.portfolio.tags.length,
                            (index) => Container(
                              padding: EdgeInsets.all(
                                littleSpace(context, 5, 3, 2).value,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppPalette.sageGreen,
                              ),
                              child: TextResponsive(
                                textColor: AppPalette.primaryGreen,
                                textAlign: TextAlign.center,
                                text: widget.portfolio.tags[index],
                                style: textTheme.bodyLarge,
                                defVal: 18,
                                tabVal: 14,
                                mobVal: 8,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: defaultPadding(context).value,
                        ),
                        Wrap(
                          runSpacing: littleSpace(context, 5, 3, 2).value,
                          spacing: littleSpace(context, 5, 3, 2).value,
                          children: [
                            RowBotton(
                              icon: 'assets/github.png',
                              text: 'Github',
                              onPressed: () {
                                UrlLauncher.execute(
                                  widget.portfolio.linkGithub,
                                );
                              },
                            ),
                            if (widget.portfolio.linkApk != 'null')
                              RowBotton(
                                icon: 'assets/download2.png',
                                text: '.apk',
                                onPressed: () {
                                  UrlLauncher.execute(
                                    widget.portfolio.linkApk,
                                  );
                                },
                              ),
                            if (portfolioPath.indexOf(widget.portfolio) == 3)
                              RowBotton(
                                icon: 'assets/google_play.png',
                                text: 'Play Store',
                                onPressed: () {
                                  UrlLauncher.execute(
                                    Strings.playStoreAlterra,
                                  );
                                },
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
