import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                const Text(" "),
                for (int i = 0; i < 15; i++) ...[
                  Row(
                    children: [
                      for (int j = 15; j > i; j--)
                        const Text(" ",
                            style: TextStyle(fontSize: 22, height: .75)),
                      for (int j = 0; j <= i * 2; j++)
                        const Text("*",
                            style: TextStyle(fontSize: 18, height: .75)),
                    ],
                  )
                ],
                for (int i = 0; i < 15; i++) ...[
                  Row(
                    children: [
                      for (int j = 0; j <= i; j++)
                        const Text(" ",
                            style: TextStyle(fontSize: 22, height: .75)),
                      const Text("*",
                          style: TextStyle(fontSize: 18, height: .75)),
                      for (int k = 36; k > i * 2; k--)
                        const Text(" ",
                            style: TextStyle(fontSize: 22, height: .75)),
                      const Text("*",
                          style: TextStyle(fontSize: 18, height: .75)),
                    ],
                  ),
                ],
                for (int i = 1; i <= 4; i++) ...[
                  Row(
                    children: [
                      for (int j = 16; j > i; j--)
                        const Text(" ",
                            style: TextStyle(fontSize: 22, height: .75)),
                      for (int j = 0; j < i + 6; j++)
                        const Text("*",
                            style: TextStyle(fontSize: 18, height: .75)),
                      for (int m = 0; m < i - 1; m++)
                        const Text("*",
                            style: TextStyle(fontSize: 18, height: .75)),
                    ],
                  ),
                ],
              ],
            ),
          ),
          Text("Ramadan Kareem"),
        ],
      ),
    );
  }
}
