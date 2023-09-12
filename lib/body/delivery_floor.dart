import 'package:flutter/material.dart';

class DeliveryFloor extends StatefulWidget {
  const DeliveryFloor({super.key});

  @override
  State<DeliveryFloor> createState() => _DeliveryFloorState();
}

class _DeliveryFloorState extends State<DeliveryFloor> {
  List floors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  dynamic selectedFloor;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> dropdownItems = floors
        .map((e) => DropdownMenuItem(
            value: e,
            child: Text(e.toString(),
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold))))
        .toList();
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Delivery Floor",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            DropdownButton(
              items: dropdownItems,
              value: selectedFloor,
              onChanged: (e) {
                setState(() {
                  selectedFloor = e;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Delivery Floor Charge",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8.0),
              child: Text('₹ ${5 * selectedFloor}',
                  style: const TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ],
        ),
        const Text("(₹5 per floor)"),
        const SizedBox(
          height: 5,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Amount Payable",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "₹225",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ]),
    );
  }
}
