import 'package:flutter/material.dart';
import '../widgets/taskbar.dart';
import '../widgets/desktop_icon.dart';
import '../widgets/app_window.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  final List<Widget> _windows = [];
  
  void _openApp(String appName, IconData icon) {
    setState(() {
      _windows.add(
        AppWindow(
          appName: appName,
          icon: icon,
          onClose: () {
            setState(() {
              _windows.removeLast();
            });
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 6,
              children: [
                DesktopIcon(
                  icon: Icons.mail,
                  label: 'Email',
                  onTap: () => _openApp('Email', Icons.mail),
                ),
                DesktopIcon(
                  icon: Icons.web,
                  label: 'Browser',
                  onTap: () => _openApp('Browser', Icons.web),
                ),
                DesktopIcon(
                  icon: Icons.note,
                  label: 'Notes',
                  onTap: () => _openApp('Notes', Icons.note),
                ),
                DesktopIcon(
                  icon: Icons.photo,
                  label: 'Gallery',
                  onTap: () => _openApp('Gallery', Icons.photo),
                ),
                DesktopIcon(
                  icon: Icons.calendar_today,
                  label: 'Calendar',
                  onTap: () => _openApp('Calendar', Icons.calendar_today),
                ),
                DesktopIcon(
                  icon: Icons.folder,
                  label: 'Files',
                  onTap: () => _openApp('Files', Icons.folder),
                ),
              ],
            ),
          ),
          ..._windows,
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Taskbar(),
          ),
        ],
      ),
    );
  }
}