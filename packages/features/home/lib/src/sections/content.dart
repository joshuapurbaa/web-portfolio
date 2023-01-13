import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../data/portfolio_path.dart';
import '../widgets/widgets.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Positioned(
              right: 0,
              child: Container(
                height: gridIconOpen(context).value,
                width: gridIconOpen(context).value,
                decoration: BoxDecoration(
                  color: AppPalette.beige.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(borderRadius(context).value),
                    bottomLeft: Radius.circular(borderRadius(context).value),
                  ),
                ),
                child: Icon(
                  Icons.open_in_full_rounded,
                  size: iconSize(context, 25, 20, 18).value,
                  color: AppPalette.primaryGreen,
                ),
              ),
            ),
            Positioned.fill(
              child: OnhoverWidget(
                builder: (isHovered) {
                  if (isHovered) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => DialogView(
                            portfolio: portfolio,
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: GlassMorphism(
                          heightGlass: cardHeadline(context).value,
                          startGradient: 0.2,
                          endGradient: 0.1,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
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
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
