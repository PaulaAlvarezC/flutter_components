import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ["Catan", "Dixit", "Monopoly", "Uno"];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List View Tipo 2",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 75, 5, 151),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.casino_outlined,
              color: Color.fromARGB(255, 88, 0, 230)),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
