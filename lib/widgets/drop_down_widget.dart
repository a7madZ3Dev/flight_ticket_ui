import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DropDownWidget extends StatelessWidget {
  final IconData prefixIcon;
  final double prefixIconSize;
  final Color prefixIconColor;
  final Color dropFillColor;
  final String hintText;
  final double dropDownHeight;
  final List<String> valueItems;

  const DropDownWidget({
    required this.prefixIcon,
    required this.prefixIconSize,
    required this.prefixIconColor,
    required this.dropFillColor,
    required this.hintText,
    required this.dropDownHeight,
    required this.valueItems,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          size: prefixIconSize,
          color: prefixIconColor,
        ),
        isDense: true,
        fillColor: dropFillColor,
        contentPadding: EdgeInsets.zero,
      ),
      isExpanded: true,
      hint: Text(
        hintText,
        style: const TextStyle(fontSize: 14),
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 20,
      buttonHeight: dropDownHeight,
      buttonPadding: const EdgeInsets.only(left: 0, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      items: valueItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        // Do something
      },
      onChanged: (value) {
        // Do something
      },
      onSaved: (value) {
        // Do something
      },
      dropdownMaxHeight: 250.0,
    );
  }
}
