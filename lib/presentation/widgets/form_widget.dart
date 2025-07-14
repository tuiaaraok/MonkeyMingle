import 'package:flutter/services.dart';
import 'package:monkeq/them/them.dart';

class FormWidget {
  static final double _standardHeight = 60;
  static final double _descriptionHeight = 108;

  static Widget textFieldForm(FormFieldConfig config) =>
      _buildTextFieldWrapper(config: config, child: _buildTextField(config));

  static Widget textFieldIcon(FormFieldConfig config) => _buildTextFieldWrapper(
    config: config,
    child: Row(
      children: [
        Expanded(child: _buildTextField(config)),
        SizedBox(width: 10.31.w),
        config.icon,
      ],
    ),
  );

  static Widget descriptionTextField(FormFieldConfig config) => Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 14.h, bottom: 8.h),
        child: SizedBox(
          width: config.width.w,
          child: Text(config.title, style: textStyleFieldTitle),
        ),
      ),
      Container(
        height: _descriptionHeight.h,
        width: config.width.w,
        decoration: textFieldDecoration,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: _buildTextField(
            config.copyWith(keyboardType: TextInputType.multiline),
          ),
        ),
      ),
    ],
  );

  static Widget _buildTextFieldWrapper({
    required FormFieldConfig config,
    required Widget child,
  }) => Column(
    children: [
      SizedBox(
        width: config.width.w,
        child: Text(config.title, style: textStyleFieldTitle),
      ),
      Container(
        height: _standardHeight.h,
        width: config.width.w,
        decoration: textFieldDecoration,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Center(child: child),
        ),
      ),
    ],
  );

  static Widget _buildTextField(FormFieldConfig config) => TextField(
    focusNode: config.focusNode,
    controller: config.controller,
    inputFormatters: config.inputFormat,
    decoration: InputDecoration(
      isDense: true,
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      hintText: config.hint,
      hintStyle: textStyleFieldHint,
    ),
    keyboardType: config.keyboardType,
    cursorColor: Colors.black,
    style: textStyleField,
    onChanged: config.onChanged,
  );
}

class FormFieldConfig {
  final double width;
  final String title;
  final TextEditingController controller;
  final Widget icon;
  final String? hint;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormat;

  const FormFieldConfig({
    this.width = 332,
    required this.title,
    required this.controller,
    this.icon = const Icon(Icons.edit),
    this.hint,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.inputFormat,
  });

  FormFieldConfig copyWith({
    String? title,
    TextEditingController? controller,
    Widget? icon,
    String? hint,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormat,
    void Function(String)? onChanged,
  }) {
    return FormFieldConfig(
      title: title ?? this.title,
      controller: controller ?? this.controller,
      icon: icon ?? this.icon,
      hint: hint ?? this.hint,
      focusNode: focusNode ?? this.focusNode,
      keyboardType: keyboardType ?? this.keyboardType,
      onChanged: onChanged ?? this.onChanged,
      inputFormat: inputFormat ?? this.inputFormat,
    );
  }
}
