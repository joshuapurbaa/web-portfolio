import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/core/styles/styles.dart';
import 'package:web_portfolio/features/home/controllers/controllers.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class Content extends StatefulWidget {
  const Content({
    super.key,
  });

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
    final axisCount = gridCount(context).value;
    final axisSpacing = defaultPadding(context).value;
    final heightGlass = cardHeadline(context).value;
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        final data = provider.portfolioPathList;
        return GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: axisCount ?? 3,
            mainAxisSpacing: axisSpacing ?? 15,
            crossAxisSpacing: axisSpacing ?? 15,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final portfolio = data[index];
            return Stack(
              children: [
                Positioned.fill(
                  child: notMobile
                      ? GlassMorphism(
                          heightGlass: heightGlass ?? 400,
                          startGradient: 0.9,
                          endGradient: 0.1,
                          child: GridImage(
                            portfolio: portfolio,
                          ),
                        )
                      : GlassMorphismMobile(
                          heightGlass: heightGlass ?? 250,
                          startGradient: 0.9,
                          endGradient: 0.1,
                          child: GridImage(
                            portfolio: portfolio,
                          ),
                        ),
                ),
                OnhoverWidget(
                  builder: ({required isHovered}) {
                    if (isHovered) {
                      return GridHover(
                        portfolio: portfolio,
                      );
                    }
                    return const OpenIconGrid();
                  },
                ),
                if (!notMobile)
                  Positioned.fill(
                    child: InkWell(
                      onTap: () {
                        showDialog<void>(
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
