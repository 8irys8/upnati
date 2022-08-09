import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const CustomInput({Key? key, required this.label, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: AppTheme.regular(
            size: 12,
            color: AppColors.text.withOpacity(0.64),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: const Color(0xFFF0F0F0),
            border: Border.all(
              width: 0.5,
              color: const Color(0xFF707070).withOpacity(0.36),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.text.withOpacity(0.16),
                offset: const Offset(-3, 1),
                blurRadius: 2,
                spreadRadius: 1,
                inset: true,
              ),
            ],
          ),
          child: FormBuilderTextField(
            name: key.toString(),
            controller: controller,
            style: AppTheme.semi(
              size: 18,
              color: AppColors.text.withOpacity(0.64),
            ),
            decoration: const InputDecoration(
              filled: true,
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              fillColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
