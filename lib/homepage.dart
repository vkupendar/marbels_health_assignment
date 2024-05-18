import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'addbutton.dart';
import 'checkbox.dart';
import 'containerdecor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  TextEditingController _objektController = TextEditingController(
    text: 'kosterangerstr. 5,83629 weyarn', // Set the initial value
  );
  TextEditingController labelController = TextEditingController(
    text: 'Allie Angaben sind korrekt', // Set the initial value
  );
  TextEditingController infoTextController = TextEditingController();
  bool _checkbox1 = true;
  bool _checkbox2 = false;
  bool _checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marbles health"),
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  // print("${labelController.text}");
                  // print(infoTextController.toString());
                  Get.bottomSheet(
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text("label: ${labelController.text}",
                                textScaleFactor: 2),
                            Text("info-text: ${infoTextController.text} ",
                                textScaleFactor: 2),
                            const Text('settings: Required',
                                textScaleFactor: 2),
                          ],
                        )),
                    barrierColor: Colors.red[50],
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(width: 5, color: Colors.black)),
                    enableDrag: false,
                  );
                },
                child: const Text("Submit")),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: decorationContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Objekt"),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border color
                      borderRadius: BorderRadius.circular(4.0), // Border radius
                    ),
                    child: TextField(
                      controller: _objektController,

                      // TextField properties
                      decoration: const InputDecoration(
                        border:
                            InputBorder.none, // Remove default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0), // Padding inside the TextField
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: decorationContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Zahleernummer *"),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border color
                      borderRadius: BorderRadius.circular(4.0), // Border radius
                    ),
                    child: const TextField(
                      // TextField properties
                      decoration: InputDecoration(
                        border:
                            InputBorder.none, // Remove default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0), // Padding inside the TextField
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: decorationContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {
                          setState(() {});
                          value = false;
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Checkbox"),
                      const SizedBox(
                        width: 1200,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            checkboxaddons.removeAt(checkboxaddons.length - 1);
                          },
                          child: const Text("Remove")),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Done"))
                    ],
                  ),
                  const Text(
                    "Label *",
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextField(
                      controller: labelController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  ),
                  const Text("Info-Text"),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextField(
                      controller: infoTextController,
                      // TextField properties
                      decoration: const InputDecoration(
                        hintText: "Add additional information",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  ),
                  const Text("Settings"),
                  Row(
                    children: [
                      Checkbox(
                        value: _checkbox1,
                        onChanged: (value) {
                          setState(() {});
                          _checkbox1 = true;
                          _checkbox2 = false;
                          _checkbox3 = false;
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("Required"),
                      const SizedBox(
                        width: 15,
                      ),
                      Checkbox(
                        value: _checkbox2,
                        onChanged: (value) {
                          setState(() {});
                          _checkbox1 = false;
                          _checkbox2 = true;
                          _checkbox3 = false;
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("Readonly"),
                      const SizedBox(
                        width: 15,
                      ),
                      Checkbox(
                        value: _checkbox3,
                        onChanged: (value) {
                          setState(() {});
                          _checkbox1 = false;
                          _checkbox2 = false;
                          _checkbox3 = true;
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("Hidden Field"),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: checkboxaddons.length,
              itemBuilder: (context, index) {
                return checkboxaddons[index];
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    checkboxaddons.add(const CheckBox());
                  });
                },
                child: const Text("Add")),
          ],
        ),
      ),
    );
  }
}
