import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../models/Song.dart';

class MusicPlayerScreen extends StatefulWidget {

  final Song song;

  const MusicPlayerScreen({super.key, required this.song});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {

  final player = AudioPlayer();
  bool isPlaying =false;

   @override
   void initState() {

     super.initState();
       super.initState();
       player.onPlayerStateChanged.listen((state) {
         setState(() {

           isPlaying =state ==PlayerState.playing;
         });
       });
   }

  @override
  void dispose() {
     player.stop();
     player.dispose();
     super.dispose();
  }

  Future<void> playPauseAudio() async {
     if (isPlaying) {
       await player.pause();
     }else {
       await player.play(UrlSource(widget.song.song_path));
     }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.song.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.network(
               widget.song.image_path,
               height: 200,
               width: 200,
               errorBuilder: (context,error,stackTrace) =>
                   Icon(Icons.music_note,size: 100),
             ),
             SizedBox(height:20),
             Text(
                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                 widget.song.name
             ),
             SizedBox(height:20),
             // Text(widget.song.song_path)

            TextButton(
                onPressed: playPauseAudio,
                child: Text(isPlaying ? "Pause" : "Play"),

            ),
          ],
        ),
      ),
    );
  }
}
