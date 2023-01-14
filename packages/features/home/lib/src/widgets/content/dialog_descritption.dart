import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/portfolio_path_model.dart';
import '../widgets.dart';

class DialogDescription extends StatelessWidget {
  const DialogDescription({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
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
            text: portfolio.description,
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
              portfolio.tags.length,
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
                  text: portfolio.tags[index],
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
                    portfolio.linkGithub,
                  );
                },
              ),
              if (portfolio.linkApk != 'null')
                RowBotton(
                  icon: 'assets/download2.png',
                  text: '.apk',
                  onPressed: () {
                    UrlLauncher.execute(
                      portfolio.linkApk,
                    );
                  },
                ),
              if (portfolio.name == 'Alterra Chat')
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
    );
  }
}
