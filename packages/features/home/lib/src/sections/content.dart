import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../data/portfolio_path.dart';
import '../widgets/widgets.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount(context).value,
        mainAxisSpacing: defaultPadding(context).value,
        crossAxisSpacing: defaultPadding(context).value,
      ),
      itemCount: portfolioPath.length,
      itemBuilder: (context, index) {
        final portfolio = portfolioPath[index];
        return Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return Stack(
              children: [
                Positioned.fill(
                  child: GlassMorphism(
                    heightGlass: cardHeadline(context).value,
                    startGradient: 0.9,
                    endGradient: 0.1,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.all(defaultPadding(context).value),
                      child: Image(
                        image: AssetImage(
                          portfolio.path[0],
                          package: 'home',
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                OnhoverWidget(
                  builder: (isHovered) {
                    if (isHovered) {
                      return GridHover(portfolio: portfolio);
                    }
                    return Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: gridIconOpen(context).value,
                        width: gridIconOpen(context).value,
                        decoration: BoxDecoration(
                          color: AppPalette.beige.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                            topRight:
                                Radius.circular(borderRadius(context).value),
                            bottomLeft:
                                Radius.circular(borderRadius(context).value),
                          ),
                        ),
                        child: Icon(
                          Icons.open_in_full_rounded,
                          size: iconSize(context, 25, 20, 18).value,
                          color: AppPalette.primaryGreen,
                        ),
                      ),
                    );
                  },
                ),
                if (!isDesktop)
                  Positioned.fill(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => DialogView(
                            portfolio: portfolio,
                          ),
                        );
                      },
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
