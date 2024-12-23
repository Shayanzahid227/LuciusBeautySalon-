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
      borderSide: const BorderSide(
          color: Color.fromARGB(255, 71, 203, 139), width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  focusedBorder: OutlineInputBorder(
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 1, 17, 9), width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  errorBorder: OutlineInputBorder(
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 73, 3, 3), width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  disabledBorder: OutlineInputBorder(
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 0, 13, 7), width: 2.0),
      borderRadius: BorderRadius.circular(16)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: textfiledBorderColor, width: 2.0),
      borderRadius: BorderRadius.circular(16)),
);
