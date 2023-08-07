import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int resault = 0;
  List<int> numbers = [13, 6, 3, 20, 5];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        int res = maxNumber(numbers);
                        setState(() {
                          resault = res;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Text('Max')),
                  ElevatedButton(
                      onPressed: () {
                        int res = sum(numbers);
                        setState(() {
                          resault = res;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      child: const Text('Sum')),
                  ElevatedButton(
                      onPressed: () {
                        int res = minNumber(numbers);
                        setState(() {
                          resault = res;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                      child: const Text('Min')),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: 100,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE4E8E9),
                  ),
                  child: Text(
                    resault.toString(),
                    style: const TextStyle(fontSize: 20, color: Colors.blue),
                    textAlign: TextAlign.center,
                  )),
            ]),
      ),
    ));
  }

  int sum(List<int> numbers) {
    int res = 0;
    for (var element in numbers) {
      res = res + element;
    }
    return res;
  }

  int maxNumber(List<int> numbers) {
    int max = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
    return max;
  }

  int minNumber(List<int> numbers) {
    int min = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < min) {
        min = numbers[i];
      }
    }
    return min;
  }
}
