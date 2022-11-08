import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';

class CustomDropdown extends StatelessWidget {
  final String? label;
  final String? hint;
  final Color? color;
  final List<Item> items;
  final ValueChanged<String?>? onChanged;
  final FormFieldValidator<String?>? validator;
  final String? initialValue;

  const CustomDropdown({
    Key? key,
    this.label,
    this.hint,
    required this.items,
    this.color,
    this.onChanged,
    this.validator,
    this.initialValue,
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
                  color: AppColors.textGray,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: color ?? AppColors.white,
            border: Border.all(
              width: 0.5,
              color: const Color(0xFF707070).withOpacity(0.36),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.text.withOpacity(0.40),
                offset: const Offset(-3, 1),
                blurRadius: 2,
                spreadRadius: 1,
                inset: true,
              ),
            ],
          ),
          child: FormBuilderDropdown<String>(
            onChanged: onChanged,
            name: key.toString(),
            initialValue: initialValue,
            // icon: const Icon(Icons.check_rounded, color: AppColors.text),
            icon: const SizedBox(),
            validator: validator,
            // iconSize: 18,
            // alignment: Alignment.centerLeft,
            style: AppTheme.regular(
              size: 11,
              color: AppColors.text,
            ),

            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 12, bottom: 12, right: 12),
              filled: true,
              hintText: hint,
              hintTextDirection: TextDirection.ltr,
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.text,
                size: 18,
              ),

              suffixIconConstraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 32,
              ),
              // isDense: true,
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
                      value: item.value,
                      child: Text(item.name),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class Item {
  final String name;
  final String value;

  Item({required this.name, required this.value});
}
