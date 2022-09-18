import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['App-based', 'Food-based'];

// ignore: empty_constructor_bodies
class DropDown extends StatelessWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: DropdownButtonExample(),
      );
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffD6D5D7), borderRadius: BorderRadius.circular(10)),
      width: getProportionateScreenWidth(250),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            dropdownColor: Color(0xffD6D5D7),
            value: dropdownValue,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
