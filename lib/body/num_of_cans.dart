import 'package:flutter/material.dart';

class NumOfCans extends StatefulWidget {
  const NumOfCans({super.key});

  @override
  State<NumOfCans> createState() => _NumOfCansState();
}

class _NumOfCansState extends State<NumOfCans> {
  List cans = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  dynamic bisleriCan;
  dynamic aquafinaCan;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> dropdownItems = cans
        .map((e) => DropdownMenuItem(
            value: e,
            child: Text(e.toString(),
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold))))
        .toList();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Number Of Cans User Returned:",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text("• ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Bisleri Water Can",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              DropdownButton(
                  items: dropdownItems,
                  value: bisleriCan,
                  onChanged: (e) {
                    setState(() {
                      bisleriCan = e;
                    });
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text("• ",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Aquafina Water Can",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              DropdownButton(
                  items: dropdownItems,
                  value: aquafinaCan,
                  onChanged: (e) {
                    setState(() {
                      aquafinaCan = e;
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}
