import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

ResponsiveValue<double> headlineSectionHeight(
  BuildContext context, [
  double defaultValue = 400,
  double valueTablet = 400,
  double valueMobile = 600,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> cardHeadline(
  BuildContext context, [
  double defaultValue = 400,
  double valueTablet = 400,
  double valueMobile = 250,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> defaultPadding(
  BuildContext context, [
  double defaultValue = 20,
  double valueTablet = 18,
  double valueMobile = 15,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<int> expanded(
  BuildContext context, [
  int defaultValue = 1,
  int valueTablet = 1,
  int valueMobile = 1,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<int> gridCount(
  BuildContext context, [
  int defaultValue = 3,
  int valueTablet = 2,
  int valueMobile = 1,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> iconSize(
  BuildContext context, [
  double defaultValue = 40,
  double valueTablet = 30,
  double valueMobile = 25,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> littleSpace(
  BuildContext context, [
  double defaultValue = 5,
  double valueTablet = 3,
  double valueMobile = 2,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> gridIconOpen(
  BuildContext context, [
  double defaultValue = 50,
  double valueTablet = 45,
  double valueMobile = 45,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> borderRadius(
  BuildContext context, [
  double defaultValue = 12,
  double valueTablet = 10,
  double valueMobile = 8,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> titleSection(
  BuildContext context, [
  double defaultValue = 100,
  double valueTablet = 80,
  double valueMobile = 70,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}

ResponsiveValue<double> certificateSectionHeight(
  BuildContext context, [
  double defaultValue = 630,
  double valueTablet = 630,
  double valueMobile = 450,
]) {
  return ResponsiveValue(
    context,
    defaultValue: defaultValue,
    valueWhen: [
      Condition.smallerThan(name: DESKTOP, value: valueTablet),
      Condition.smallerThan(name: TABLET, value: valueMobile),
    ],
  );
}
