import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String name;
  final String imageUrl;
  final int difficulty;

  Task(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.difficulty});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  void handleIncrementLevel() {
    setState(() {
      level++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        children: [
          Container(
            width: 350,
            height: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  widget.imageUrl,
                  width: 90,
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text('Difficulty: ${widget.difficulty}')
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    onPressed: level == 10 ? null : handleIncrementLevel,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
                        ),
                        Text(
                          'UP',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4)),
                color: level == 10 ? Colors.green : Colors.blue),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearProgressIndicator(
                      value: level / 10,
                      backgroundColor: Colors.white30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Level: $level',
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
