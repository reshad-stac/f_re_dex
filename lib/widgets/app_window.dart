import 'package:flutter/material.dart';

class AppWindow extends StatefulWidget {
  final String appName;
  final IconData icon;
  final VoidCallback onClose;

  const AppWindow({
    super.key,
    required this.appName,
    required this.icon,
    required this.onClose,
  });

  @override
  State<AppWindow> createState() => _AppWindowState();
}

class _AppWindowState extends State<AppWindow> {
  double top = 100;
  double left = 100;
  double width = 600;
  double height = 400;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top += details.delta.dy;
            left += details.delta.dx;
          });
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Icon(widget.icon, size: 16, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      widget.appName,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close, size: 16),
                      onPressed: widget.onClose,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    '${widget.appName} Content',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}