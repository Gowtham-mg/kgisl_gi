import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropDownValue = "Choose language";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Column(
          children: [
            DropdownButton<String>(
              value: dropDownValue,
              icon: const Icon(Icons.arrow_downward_sharp),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(),
              onChanged: (String? newValue) {
                if (newValue == null) {
                  return;
                }
                setState(() {
                  dropDownValue = newValue;
                });
              },
              items: <String>["Choose language", 'One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hello, Friend!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Enter your personal details",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                            ),
                            side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Signin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("or use your account"),
                        Container(
                          decoration: BoxDecoration(color: Colors.grey.shade200),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              focusColor: Colors.grey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                        TextField(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
