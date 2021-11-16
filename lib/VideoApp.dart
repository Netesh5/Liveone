import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



// class VideoDemo extends StatefulWidget {
//   VideoDemo() : super();

//   final String title = "Video Demo";

//   @override
//   VideoDemoState createState() => VideoDemoState();
// }

// class VideoDemoState extends State<VideoDemo> {
//   //
//   VideoPlayerController _controller;
//   Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       // "http://yoursports.stream/ing/espn");
//         "https://ustreamix.su/stream.php?id=polsat-sport&token=e0c-05d-653-3a0-98e-4b9-6cc-ab2-5d5-16e-dd");
//     // _controller = VideoPlayerController.asset("assets/videos/1.mp4");
//     _initializeVideoPlayerFuture = _controller.initialize();
//     _controller.setLooping(true);
//     _controller.setVolume(1.0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Video Demo"),
//       ),
//       body: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Center(
//               child: AspectRatio(
//                 // aspectRatio: 16/9,
//                aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               ),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (_controller.value.isPlaying) {
//               _controller.pause();
//             } else {
//               _controller.play();
//             }
//           });
//         },
//         child:
//             Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
//       ),
//     );
//   }
// }




// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Example',
//       home: VideoExample(),
//     );
//   }
// }

// class VideoExample extends StatefulWidget {
//   @override
//   VideoState createState() => VideoState();
// }

// class VideoState extends State<VideoExample> {
//   VideoPlayerController playerController;
//   VoidCallback listener;

//   @override
//   void initState() {
//     super.initState();
//     listener = () {
//       setState(() {});
//     };
//   }

//   void createVideo() {
//     if (playerController == null) {
//       playerController = VideoPlayerController.asset(
//         "assets/videos/1.mp4")

//           // "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
//         ..addListener(listener)
//         ..setVolume(1.0)
//         ..initialize()
//         ..play();
//     } else {
//       if (playerController.value.isPlaying) {
//         playerController.pause();
//       } else {
//         playerController.initialize();
//         playerController.play();
//       }
//     }
//   }

//   @override
//   void deactivate() {
    
    
//     super.deactivate();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Example'),
//       ),
//       body: Center(
//           child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Container(
//                 child: (playerController != null
//                     ? VideoPlayer(
//                         playerController,
//                       )
//                     : Container()),
//               ))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           createVideo();
//           playerController.play();
//         },
//         child: Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }

class Sonylive extends StatefulWidget {
  @override
  _SonyliveState createState() => _SonyliveState();
}

class _SonyliveState extends State<Sonylive> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title:Text("Sony Live"),
      ),
      url:"https://www.mxplayer.in/live-tv/football-tv-live-channel-8017footballtvin?category=Sports",
      withZoom: true,
      // withJavascript: false,

    );
  }
}


// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class ChewieListItem extends StatefulWidget {
//   // This will contain the URL/asset path which we want to play
//   final VideoPlayerController videoPlayerController;
//   final bool looping;

//   ChewieListItem({
//     @required this.videoPlayerController,
//     this.looping,
//     Key key,
//   }) : super(key: key);

//   @override
//   _ChewieListItemState createState() => _ChewieListItemState();
// }

// class _ChewieListItemState extends State<ChewieListItem> {
//   ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();
   
//     // Wrapper on top of the videoPlayerController
//     _chewieController = ChewieController(
//       videoPlayerController: widget.videoPlayerController,
//       aspectRatio: 16 / 9,
//       // Prepare the video to be played and display the first frame
//       autoInitialize: true,
//       looping: widget.looping,
//       // Errors can occur for example when trying to play a video
//       // from a non-existent URL
//       errorBuilder: (context, errorMessage) {
//         return Center(
//           child: Text(
//             errorMessage,
//             style: TextStyle(color: Colors.white),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Chewie(
//         controller: _chewieController,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     // IMPORTANT to dispose of all the used resources
//     widget.videoPlayerController.dispose();
//     _chewieController.dispose();
//   }
// }
// T






// import 'package:chewie/chewie.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';




// class ChewieDemo extends StatefulWidget {
//   ChewieDemo({this.title = 'Chewie Demo'});

//   final String title;

//   @override
//   State<StatefulWidget> createState() {
//     return _ChewieDemoState();
//   }
// }

// class _ChewieDemoState extends State<ChewieDemo> {
//   TargetPlatform _platform;
//   VideoPlayerController _videoPlayerController1;
//   VideoPlayerController _videoPlayerController2;
//   ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();
//     _videoPlayerController1 = VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
//     _videoPlayerController2 = VideoPlayerController.network(
//         'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController1,
//       aspectRatio: 3 / 2,
//       autoPlay: true,
//       looping: true,
//       // Try playing around with some of these other options:

//       // showControls: false,
//       // materialProgressColors: ChewieProgressColors(
//       //   playedColor: Colors.red,
//       //   handleColor: Colors.blue,
//       //   backgroundColor: Colors.grey,
//       //   bufferedColor: Colors.lightGreen,
//       // ),
//       // placeholder: Container(
//       //   color: Colors.grey,
//       // ),
//       // autoInitialize: true,
//     );
//   }

//   @override
//   void dispose() {
//     _videoPlayerController1.dispose();
//     _videoPlayerController2.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: widget.title,
//       theme: ThemeData.light().copyWith(
//         platform: _platform ?? Theme.of(context).platform,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               child: Center(
//                 child: Chewie(
//                   controller: _chewieController,
//                 ),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 _chewieController.enterFullScreen();
//               },
//               child: Text('Fullscreen'),
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: FlatButton(
//                     onPressed: () {
//                       setState(() {
//                         _chewieController.dispose();
//                         _videoPlayerController2.pause();
//                         _videoPlayerController2.seekTo(Duration(seconds: 0));
//                         _chewieController = ChewieController(
//                           videoPlayerController: _videoPlayerController1,
//                           aspectRatio: 3 / 2,
//                           autoPlay: true,
//                           looping: true,
//                         );
//                       });
//                     },
//                     child: Padding(
//                       child: Text("Video 1"),
//                       padding: EdgeInsets.symmetric(vertical: 16.0),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: FlatButton(
//                     onPressed: () {
//                       setState(() {
//                         _chewieController.dispose();
//                         _videoPlayerController1.pause();
//                         _videoPlayerController1.seekTo(Duration(seconds: 0));
//                         _chewieController = ChewieController(
//                           videoPlayerController: _videoPlayerController2,
//                           aspectRatio: 3 / 2,
//                           autoPlay: true,
//                           looping: true,
//                         );
//                       });
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 16.0),
//                       child: Text("Error Video"),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: FlatButton(
//                     onPressed: () {
//                       setState(() {
//                         _platform = TargetPlatform.android;
//                       });
//                     },
//                     child: Padding(
//                       child: Text("Android controls"),
//                       padding: EdgeInsets.symmetric(vertical: 16.0),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: FlatButton(
//                     onPressed: () {
//                       setState(() {
//                         _platform = TargetPlatform.iOS;
//                       });
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 16.0),
//                       child: Text("iOS controls"),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }