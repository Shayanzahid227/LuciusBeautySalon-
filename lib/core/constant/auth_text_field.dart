import 'package:figma_creation_task/core/constant/colors.dart';
import 'package:figma_creation_task/core/constant/text_style.dart';
import 'package:flutter/material.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style16,
  prefixIconColor: blackColor,
  suffixIconColor: blackColor,
  fillColor: filledColor,
  filled: true,
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
);
