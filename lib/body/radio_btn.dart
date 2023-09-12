import 'package:flutter/material.dart';

class RadioSelector extends StatefulWidget {
  final String title;
  const RadioSelector({super.key, required this.title});

  @override
  State<RadioSelector> createState() => _RadioSelectorState();
}

class _RadioSelectorState extends State<RadioSelector> {
  var radio_value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: 1,
                  groupValue: radio_value,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Colors.green,
                  onChanged: (e) {
                    setState(() {
                      radio_value = e ?? 1;
                    });
                  },
                ),
                const Text(
                  "Yes",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Radio(
                  value: 2,
                  groupValue: radio_value,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Colors.red,
                  onChanged: (e) {
                    setState(() {
                      radio_value = e ?? 1;
                    });
                  },
                ),
                const Text(
                  "No",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
