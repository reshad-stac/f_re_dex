import 'package:flutter/material.dart';

class Taskbar extends StatelessWidget {
  const Taskbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: Colors.black87,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.apps),
            onPressed: () {},
            color: Colors.white,
          ),
          const VerticalDivider(color: Colors.white24),
          IconButton(
            icon: const Icon(Icons.mail),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.web),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.note),
            onPressed: () {},
            color: Colors.white,
          ),
          const Spacer(),
          const Text(
            '12:00 PM',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 16),
          IconButton(
            icon: const Icon(Icons.wifi),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.battery_full),
            onPressed: () {},
            color: Colors.white,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}