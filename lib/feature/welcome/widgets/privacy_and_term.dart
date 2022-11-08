
import 'package:flutter/material.dart';

import '../../../common/utils/coloors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
      text: 'Read OUr,',style: TextStyle(color: Coloors.greyDark),children: [
        TextSpan(
          
          text: 'Privacy Policy',style: TextStyle(color:Coloors.blueDark)
        ),
        TextSpan(
          text: 'Tap "Agree and continue" to accept the'
        ),
        TextSpan(
          text: 'Terms of Services',style: TextStyle(color: Coloors.blueDark)
        )
      ]
    )
    );
  }
}