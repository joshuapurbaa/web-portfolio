import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final spacing = defaultPadding(context, 15, 12, 10).value;
    return Wrap(
      runSpacing: spacing ?? 15,
      children: [
        TextButtonIcon(
          url: Strings.linkedIn,
          icon: 'assets/linkedin.png',
          label: 'Linkedin',
        ),
        SizedBox(
          width: defaultPadding(context, 15, 12, 10).value,
        ),
        TextButtonIcon(
          url: Strings.github,
          icon: 'assets/github.png',
          label: 'Github',
        ),
        SizedBox(
          width: defaultPadding(context, 15, 12, 10).value,
        ),
        TextButtonIcon(
          url: Strings.wa,
          icon: 'assets/wa.png',
          label: 'Whatsapp',
        ),
        SizedBox(
          width: defaultPadding(context, 15, 12, 10).value,
        ),
        TextButtonIcon(
          url: Strings.cv,
          icon: 'assets/download1.png',
          label: 'Download CV',
        ),
      ],
    );
  }
}
