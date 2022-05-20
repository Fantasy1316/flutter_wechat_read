import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      margin: EdgeInsets.fromLTRB(20, paddingTop + 10, 20, 5),
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19), color: Colors.white60),
      child: Row(
        children: [
          const Icon(Icons.search_rounded, color: Colors.grey),
          const SizedBox(width: 10),
          const Expanded(
              child: Text('长安十二时辰',
                  style: TextStyle(fontSize: 16, color: Colors.grey))),
          Container(
            width: 1,
            height: 20,
            margin: const EdgeInsets.only(right: 16),
            decoration: const BoxDecoration(color: Colors.grey),
          ),
          const Text('书城', style: TextStyle(fontSize: 15))
        ],
      ),
    );
  }
}
