import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double inTemp = 0.0, outTemp = 0.0;
  bool isFah = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Temperature Converter',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xFFe4efe9),
        ),
        body: Container(
          color: Color(0xFFae8b9c),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Temperature',
                    labelText: isFah
                        ? 'You have entered temp $inTemp in Fahrenhiet'
                        : 'You have entered temp $inTemp in Celsius',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) {
                    setState(() {
                      try {
                        inTemp = double.parse(newValue);
                      } catch (e) {}
                    });
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                RadioListTile(
                  value: true,
                  groupValue: isFah,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isFah = newValue!;
                    });
                  },
                  title: const Text(
                    'Fahrenhiet',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                RadioListTile(
                  value: false,
                  groupValue: isFah,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isFah = newValue!;
                    });
                  },
                  title: const Text(
                    'Celsius',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      outTemp = isFah
                          ? (inTemp - 32) / (5 / 6)
                          : (inTemp * 9 / 5) + 32;
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text(
                            'Final Result',
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          content: isFah
                              ? Text(
                                  '$inTemp in Fahrenhiet = $outTemp in Celsius')
                              : Text(
                                  '$inTemp in Celsius = $outTemp in Fahrenhiet'),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    'Convert',
                    style: TextStyle(color: Colors.white),
                  ),
                  // color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
