import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marbelshealth_assignment/containerdecor.dart';

import 'addbutton.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  TextEditingController labelController = TextEditingController(
    text: 'Allie Angaben sind korrekt',
  );
  TextEditingController infoTextController = TextEditingController();
  bool _checkbox1 = true;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
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
                  child: Text("Remove")),
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
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: TextField(
              controller: infoTextController,
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
    );
  }
}
