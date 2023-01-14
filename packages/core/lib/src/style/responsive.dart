import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

ResponsiveValue<dynamic> headlineSectionHeight(
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

ResponsiveValue<dynamic> cardHeadline(
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

ResponsiveValue<dynamic> defaultPadding(
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

ResponsiveValue<dynamic> expanded(
  BuildContext context, [
  double defaultValue = 1,
  double valueTablet = 1,
  double valueMobile = 1,
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

ResponsiveValue<dynamic> gridCount(
  BuildContext context, [
  double defaultValue = 3,
  double valueTablet = 2,
  double valueMobile = 1,
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

ResponsiveValue<dynamic> iconSize(
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

ResponsiveValue<dynamic> littleSpace(
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

ResponsiveValue<dynamic> gridIconOpen(
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

ResponsiveValue<dynamic> borderRadius(
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
