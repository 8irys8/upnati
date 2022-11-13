import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';

class CustomInput extends StatefulWidget {
  final String? label;
  final String? hint;
  final bool? obscure;
  final bool? isMultiline;
  final TextEditingController controller;
  final Color? color;
  final TextStyle? labelStyle;
  final bool? leftAlignment;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final FormFieldValidator<String?>? validator;
  final TextInputType? inputType;
  final double? shadowColor;
  final TextDirection? textDirection;
  final bool enabled;
  final double? spreadRadius;
  const CustomInput({
    Key? key,
    this.label,
    required this.controller,
    this.hint,
    this.obscure,
    this.isMultiline,
    this.color,
    this.labelStyle,
    this.leftAlignment,
    this.hintStyle,
    this.borderRadius,
    this.validator,
    this.inputType,
    this.enabled = true,
    this.shadowColor,
    this.spreadRadius,
    this.textDirection,
  }) : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.label == null
                  ? const SizedBox()
                  : widget.leftAlignment == true
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.label!,
                            style: widget.labelStyle ??
                                AppTheme.regular(
                                  size: 12,
                                  color: AppColors.textGray,
                                ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            widget.label!,
                            style: widget.labelStyle ??
                                AppTheme.regular(
                                  size: 12,
                                  color: AppColors.textGray,
                                ),
                          ),
                        ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 22),
                color: widget.color ?? AppColors.white,
                border: Border.all(
                  width: 0.5,
                  color: const Color(0xFF707070).withOpacity(0.36),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        AppColors.text.withOpacity(widget.shadowColor ?? .40),
                    offset: const Offset(-3, 1),
                    blurRadius: 3,
                    blurStyle: BlurStyle.inner,
                    spreadRadius: widget.spreadRadius ?? 1,
                    inset: true,
                  ),
                ],
              ),
              child: FormBuilderTextField(
                name: widget.key.toString(),
                validator: (value) {
                  setState(() {
                    errorText = widget.validator?.call(value);
                  });

                  return errorText;
                },
                enabled: widget.enabled,
                keyboardType: widget.inputType,
                textDirection: widget.textDirection ?? TextDirection.rtl,
                minLines: widget.isMultiline == true ? 4 : 1,
                maxLines: widget.isMultiline == true ? 10 : 1,
                textAlignVertical:
                    widget.isMultiline == true ? TextAlignVertical.top : null,
                controller: widget.controller,
                obscureText: widget.obscure ?? false,
                obscuringCharacter: '*',
                style: AppTheme.semi(
                  size: 18,
                  color: AppColors.textGray,
                ),
                decoration: InputDecoration(
                  filled: true,
                  hintText: widget.hint,
                  hintStyle: widget.hintStyle,
                  errorText: errorText == null ? null : '',
                  errorStyle: const TextStyle(
                    height: 0,
                    color: Colors.transparent,
                    fontSize: 0,
                  ),
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
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
              ),
            ),
            errorText == null
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      errorText ?? '',
                      style: AppTheme.medium(size: 12, color: AppColors.red),
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
