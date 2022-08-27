import 'package:firebase_flutter/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../container/Fire_info.dart';

class FireVideoStreaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            70.0,
          ),
          child: _buildAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: VideoPlayerScreen(),
      ),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          onPressed: () {
            // Navigator.pushNamed(context, "/home");
            print("HOME");
          },
          icon: Icon(
            CupertinoIcons.home,
            size: 45,
          ),
        ),
        title: const Text(
          "화재 발생 정보 ",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      );
} // Fire class

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key? key}) : super(key: key);
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/flutter-firebase-2a0d4.appspot.com/o/Fire%2Ffire.mp4?alt=media&token=23bb1ba4-e3f8-4eff-88d6-15079c3f7f0b',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    // 자원을 반환하기 위해 VideoPlayerController를 dispose 시키세요.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 다음 단계에서 영상을 보여줄 것입니다.
    return Scaffold(
      appBar: _buildFireAppBar(),
      body: Column(
        children: [
          _build_Video_Future_Builder(),
          SizedBox(height: 20),
          Text(
            "화재 발생 상세 정보",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(child: FireInfo()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // 영상이 재생 중이라면, 일시 중지 시킵니다.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // 만약 영상이 일시 중지 상태였다면, 재생합니다.
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  FutureBuilder<void> _build_Video_Future_Builder() {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // 만약 VideoPlayerController 초기화가 끝나면, 제공된 데이터를 사용하여
          // VideoPlayer의 종횡비를 제한하세요.
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            // 영상을 보여주기 위해 VideoPlayer 위젯을 사용합니다.
            child: VideoPlayer(_controller),
          );
        } else {
          // 만약 VideoPlayerController가 여전히 초기화 중이라면,
          // 로딩 스피너를 보여줍니다.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  AppBar _buildFireAppBar() => AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '화재 발생 영상',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      );
}
