import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:web_portfolio/app_route.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp.router(
        theme: AppTheme.light(),
        debugShowCheckedModeBanner: false,
        builder: (context, child) => ResponsiveWrapper.builder(
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
          child,
        ),
        title: 'Portfolio Joshua',
        routerConfig: AppRoute.router,
      ),
    );
  }
}
