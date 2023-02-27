import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
          controller: _date,
          decoration: InputDecoration(hintText: "Select DOB"),
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1970),
                lastDate: DateTime(2024));
            if (pickeddate != null) {
              setState(() {
                _date.text = DateFormat("dd-MM-yyyy").format(pickeddate);
              });
            }
          }),
    );
  }
}
