import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class AddEmptyProductContainer extends StatelessWidget {
  const AddEmptyProductContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: .1,
          color: AppColors.gray,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: AppColors.inputGray,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 39),
              child: SvgPicture.asset(
                Svgs.icBox,
                color: AppColors.text.withOpacity(0.15),
              ),
            ),
          ),
          const SizedBox(
            height: 51,
          ),
        ],
      ),
    );
  }
}

// Row(
//                 children: [
//                   Expanded(child: AddEmptyProductContainer()),
//                   SizedBox(
//                     width: 7,
//                   ),
//                   Expanded(child: AddEmptyProductContainer()),
//                 ],
//               ),