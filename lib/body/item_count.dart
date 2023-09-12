import 'package:flutter/material.dart';

class ItemCount extends StatefulWidget {
  const ItemCount({super.key});

  @override
  State<ItemCount> createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  int bisleriCan = 0;
  bool bisleriCanSelected = false;
  bool roCanSelected = false;
  int roCan = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: MediaQuery.of(context).size.height * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Items in this order",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "QTY",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/ro.png',
                    ),
                    height: 40,
                    width: 40,
                  ),
                  Text("RO Water Can",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              const SizedBox(width: 30),
              Checkbox(
                  value: roCanSelected,
                  onChanged: (e) {
                    setState(() {
                      roCanSelected = e ?? false;
                    });
                  }),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (roCan > 0) roCan--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 16,
                      ),
                    ),
                    Text(
                      roCan.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          roCan++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/bisleri.png',
                    ),
                    height: 40,
                    width: 40,
                  ),
                  Text("Bisleri Water Can",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              Checkbox(
                  value: bisleriCanSelected,
                  onChanged: (e) {
                    setState(() {
                      bisleriCanSelected = e ?? false;
                    });
                  }),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (bisleriCan > 0) bisleriCan--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 16,
                      ),
                    ),
                    Text(
                      bisleriCan.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bisleriCan++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
