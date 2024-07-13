import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/data/data.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class DialogDescription extends StatelessWidget {
  const DialogDescription({
    required this.portfolio,
    super.key,
  });

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final space = littleSpace(context).value;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextResponsive(
            textColor: AppPalette.primaryGreen,
            text: 'Description:',
            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
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
            text: 'Features:',
            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            defVal: 30,
            tabVal: 25,
            mobVal: 17,
            maxLines: 5,
            textAlign: TextAlign.left,
          ),
          TextResponsive(
            textColor: AppPalette.primaryGreen,
            text: portfolio.features,
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
            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            defVal: 30,
            tabVal: 25,
            mobVal: 17,
            maxLines: 5,
            textAlign: TextAlign.left,
          ),
          Wrap(
            spacing: space ?? 5,
            runSpacing: space ?? 5,
            children: List.generate(
              portfolio.tags.length,
              (index) => Container(
                padding: EdgeInsets.all(
                  space ?? 5,
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
            runSpacing: space ?? 5,
            spacing: space ?? 5,
            children: [
              if (portfolio.linkGithub != 'null')
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
              // if (portfolio.name == 'Alterra Chat')
              //   RowBotton(
              //     icon: 'assets/google_play.png',
              //     text: 'Play Store',
              //     onPressed: () {
              //       UrlLauncher.execute(
              //         Strings.playStoreAlterra,
              //       );
              //     },
              //   ),
              if (portfolio.name == 'Budget Intelli') ...[
                RowBotton(
                  icon: 'assets/google_play.png',
                  text: 'Play Store',
                  onPressed: () {
                    UrlLauncher.execute(
                      Strings.playStoreBudgetIntelli,
                    );
                  },
                ),
              ],
              if (portfolio.name == 'PLN Click') ...[
                RowBotton(
                  icon: 'assets/google_play.png',
                  text: 'Play Store',
                  onPressed: () {
                    UrlLauncher.execute(
                      Strings.playStorePlnClick,
                    );
                  },
                ),
                RowBotton(
                  icon: 'assets/app-store.png',
                  text: 'App Store',
                  onPressed: () {
                    UrlLauncher.execute(
                      Strings.appStorePlnClick,
                    );
                  },
                ),
              ],
              if (portfolio.name == 'Barista PLN') ...[
                RowBotton(
                  icon: 'assets/google_play.png',
                  text: 'Play Store',
                  onPressed: () {
                    UrlLauncher.execute(
                      Strings.playStoreBarista,
                    );
                  },
                ),
                RowBotton(
                  icon: 'assets/app-store.png',
                  text: 'App Store',
                  onPressed: () {
                    UrlLauncher.execute(
                      Strings.appStoreBarista,
                    );
                  },
                ),
              ],
              if (portfolio.linkOther != null)
                RowBotton(
                  icon: 'assets/link.png',
                  text: 'Course Link',
                  onPressed: () {
                    UrlLauncher.execute(
                      portfolio.linkOther!,
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
