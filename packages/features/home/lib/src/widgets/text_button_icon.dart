import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TextButtonIcon extends StatelessWidget {
  const TextButtonIcon({
    required this.url, required this.icon, required this.label, super.key,
  });

  final String url;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white38,
        padding: const EdgeInsets.all(10),
        elevation: 4,
      ),
      onPressed: url != 'null'
          ? () {
              UrlLauncher.execute(url);
            }
          : null,
      icon: Image.asset(
        icon,
        width: 20,
        package: 'home',
      ),
      label: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
