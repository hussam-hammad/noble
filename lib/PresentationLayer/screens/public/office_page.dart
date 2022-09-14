import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/office_widgets.dart';

class OfficePage extends StatelessWidget {
  const OfficePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: OfficeInfo(),
            flex: 1,
          ),
          const Expanded(flex: 1, child: OfficeBody())
        ]),
      ),
    );
  }
}
