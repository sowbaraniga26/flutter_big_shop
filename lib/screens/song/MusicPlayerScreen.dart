import 'package:flutter/material.dart';

import '../../models/Song.dart';

class MusicPlayerScreen extends StatefulWidget {

  final Song song;

  const MusicPlayerScreen({super.key, required this.song});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.song.name),
      ),
      body: Center(
        child: Text(widget.song.name),
      ),
    );
  }
}
