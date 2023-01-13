import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'widgets.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: defaultPadding(context, 15, 12, 10).value,
      runAlignment: WrapAlignment.start,
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
          url: Strings.wa,
          icon: 'assets/download1.png',
          label: 'Download CV',
        ),
      ],
    );
  }
}
