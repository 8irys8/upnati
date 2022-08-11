import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';

class CustomDropdown extends StatelessWidget {
  final String? label;
  final String? hint;
  final Color? color;
  final List<String> items;

  const CustomDropdown({
    Key? key,
    this.label,
    this.hint,
    required this.items,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label!,
                style: AppTheme.regular(
                  size: 12,
                  color: AppColors.text.withOpacity(0.64),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: color ?? const Color(0xFFF0F0F0),
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
          child: FormBuilderDropdown(
            name: key.toString(),
            style: AppTheme.semi(
              size: 18,
              color: AppColors.text.withOpacity(0.64),
            ),
            decoration: InputDecoration(
              filled: true,
              hintText: hint,
              hintStyle: AppTheme.regular(
                size: 11,
                color: AppColors.text,
              ).copyWith(
                decoration: TextDecoration.underline,
              ),
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
              disabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              focusedBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              errorBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              fillColor: Colors.transparent,
            ),
            items: items
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
