import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FireVideoStreaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            70.0,
          ),
          child: _buildAppBar()),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(
          CupertinoIcons.home,
          size: 35,
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
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
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
      body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {}),
    );
  }

  AppBar _buildFireAppBar() => AppBar(
        title: Text(
          '화재 발생 영상',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}
