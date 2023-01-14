import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../widgets/widgets.dart';

class Content extends StatefulWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => Provider.of<HomeProvider>(context, listen: false).fetchData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        final data = provider.portfolioPathList;
        return GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCount(context).value,
            mainAxisSpacing: defaultPadding(context).value,
            crossAxisSpacing: defaultPadding(context).value,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final portfolio = data[index];
            return Stack(
              children: [
                Positioned.fill(
                  child: notMobile
                      ? GlassMorphism(
                          heightGlass: cardHeadline(context).value,
                          startGradient: 0.9,
                          endGradient: 0.1,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          child: GridImage(portfolio: portfolio),
                        )
                      : GlassMorphismMobile(
                          heightGlass: cardHeadline(context).value,
                          startGradient: 0.9,
                          endGradient: 0.1,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          child: GridImage(portfolio: portfolio),
                        ),
                ),
                OnhoverWidget(
                  builder: (isHovered) {
                    if (isHovered) {
                      return GridHover(portfolio: portfolio);
                    }
                    return const OpenIconGrid();
                  },
                ),
                if (!notMobile)
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
