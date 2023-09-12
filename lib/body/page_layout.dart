import 'package:bt_demo/body/delivery_floor.dart';
import 'package:bt_demo/body/item_count.dart';
import 'package:bt_demo/body/num_of_cans.dart';
import 'package:bt_demo/body/payment_section.dart';
import 'package:bt_demo/body/radio_btn.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16.0,
            ),
            const NumOfCans(),
            const SizedBox(
              height: 16.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Amount Recieved in Cash",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text("₹ ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          hintText: "0",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            const RadioSelector(
              title: "Is Lift available in Building?",
            ),
            const ItemCount(),
            const RadioSelector(
              title: "Security Deposit?",
            ),
            const DeliveryFloor(),
            const Payments(),
            const Row(
              children: [
                Icon(
                  Icons.qr_code,
                  color: Colors.blue,
                  size: 36,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Text(
                  "Show Payment QR",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                minimumSize:
                    MaterialStateProperty.all(const Size(double.infinity, 60)),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
