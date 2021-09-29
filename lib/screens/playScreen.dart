import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/main.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation colorAnimation;
  String url = "";
  String audioState = "";
  AudioPlayer audioPlayer = AudioPlayer();

  Duration totalDuration;
  Duration position;

  Map musicData = {};

  Icon playButton = Icon(
    Icons.play_arrow,
    size: 35,
  );

  initAudio() {
    audioPlayer.onDurationChanged.listen((updatedDuration) {
      setState(() {
        totalDuration = updatedDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((Duration updatedPosition) {
      setState(() {
        position = updatedPosition;

        position == totalDuration
            ? playButton = Icon(
                Icons.play_arrow,
                size: 35,
              )
            : Icon(
                Icons.pause,
                size: 30,
              );
      });
    });
  }

  playAudio(String url) {
    audioPlayer.play(url);
  }

  seekAudio(Duration durationToSeek) {
    audioPlayer.seek(durationToSeek);
  }

  pauseAudio() {
    audioPlayer.pause();
  }

  stopAudio() {
    audioPlayer.stop();
  }

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        if (state == AudioPlayerState.COMPLETED) {
          audioState = "Completed";
          setState(() {
            playButton = Icon(
              Icons.play_arrow,
              size: 35,
            );
          });
        } else if (state == AudioPlayerState.PLAYING) {
          audioState = "Playing";
          setState(() {
            playButton = Icon(
              Icons.pause,
              size: 30,
            );
          });
        } else if (state == AudioPlayerState.STOPPED) {
          audioState = "Stopped";
        }
        if (state == AudioPlayerState.PAUSED) {
          setState(() {
            playButton = Icon(
              Icons.play_arrow,
              size: 35,
            );
          });
        }
      });
    });

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _controller.addListener(() {
      print(_controller.value);
      print(colorAnimation.value);
    });

    colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.white).animate(_controller);
    initAudio();
  }

  Icon repeatButton = Icon(Icons.repeat);
  int tappingRepeat = 0;

  Icon shuffleIcon = Icon(Icons.shuffle);
  int tappingShuffle = 0;

  Icon dislike = Icon(Icons.thumb_down_off_alt);
  int tapDislike = 0;

  Icon like = Icon(Icons.thumb_up_off_alt);
  int tapLike = 0;

  @override
  Widget build(BuildContext context) {
    musicData = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          // Within the SecondRoute widget
                          onPressed: () {
                            // Within the `FirstRoute` widget

                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          icon: Icon(
                            Icons.expand_more,
                            size: 30,
                          ),
                        ),
                        Text(
                          "Song",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Card(
                              child: SizedBox(
                                height: 320,
                                width: 320,
                                child: Hero(
                                  tag: 'anima1',
                                  child: Image.network(
                                    'https://ytclone.pythonanywhere.com' +
                                        musicData['imageUrl'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AnimatedBuilder(
                                      animation: _controller,
                                      builder: (
                                        BuildContext context,
                                        _,
                                      ) {
                                        return GestureDetector(
                                            onTap: () => setState(() {
                                                  if (tapDislike == 0) {
                                                    dislike = Icon(
                                                      Icons.thumb_down,
                                                    );
                                                    tapDislike = 1;
                                                  } else {
                                                    dislike = Icon(
                                                      Icons.thumb_down_off_alt,
                                                    );
                                                    tapDislike = 0;
                                                  }
                                                }),
                                            child: dislike);
                                      }),
                                  Text(
                                    musicData['title'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                      onTap: () => setState(() {
                                            if (tapLike == 0) {
                                              like = Icon(Icons.thumb_up);
                                              tapLike = 1;
                                            } else {
                                              like =
                                                  Icon(Icons.thumb_up_off_alt);
                                              tapLike = 0;
                                            }
                                          }),
                                      child: like),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(musicData['artist']),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 25, right: 25),
                            child: SliderTheme(
                              data: SliderThemeData(
                                  trackHeight: 5,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5)),
                              child: Slider(
                                value: position == null
                                    ? 0
                                    : position.inMilliseconds.toDouble(),
                                activeColor: Colors.white,
                                inactiveColor: Colors.grey[700],
                                onChanged: (value) {
                                  setState(() {
                                    if (value.toString() ==
                                        totalDuration.toString()) {
                                      playButton = Icon(
                                        Icons.play_arrow,
                                        size: 35,
                                      );
                                    }
                                  });
                                  seekAudio(
                                      Duration(milliseconds: value.toInt()));
                                },
                                min: 0,
                                max: totalDuration == null
                                    ? 0
                                    : totalDuration.inMilliseconds.toDouble(),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(position == null
                                      ? "0"
                                      : position
                                          .toString()
                                          .split(".")
                                          .first
                                          .split(":")
                                          .elementAt(1)
                                          .replaceAll("00", "0")),
                                  Text(":"),
                                  Text(position == null
                                      ? "0"
                                      : position
                                          .toString()
                                          .split(".")
                                          .first
                                          .split(":")
                                          .elementAt(2)),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  Text(totalDuration == null
                                      ? "0"
                                      : totalDuration
                                          .toString()
                                          .split(".")
                                          .first
                                          .split(":")
                                          .elementAt(1)
                                          .replaceAll("00", "")),
                                  Text(":"),
                                  Text(totalDuration == null
                                      ? "0"
                                      : totalDuration
                                          .toString()
                                          .split(".")
                                          .first
                                          .split(":")
                                          .elementAt(2)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: shuffleIcon,
                                onTap: () => setState(() {
                                  if (tappingShuffle == 0) {
                                    shuffleIcon = Icon(Icons.shuffle);
                                    tappingShuffle = 1;
                                  } else {
                                    shuffleIcon =
                                        Icon(Icons.shuffle_on_outlined);
                                    tappingShuffle = 0;
                                  }
                                }),
                              ),

                              Icon(Icons.skip_previous),

                              GestureDetector(
                                onTap: () => setState(() {
                                  if (audioState == "Paused" ||
                                      audioState == "Stopped" ||
                                      audioState == "Completed") {
                                    playAudio(
                                        "https://ytclone.pythonanywhere.com" +
                                            musicData['musicUrl']);
                                    audioState = "Playing";
                                    print(musicData['musicUrl']);
                                  } else {
                                    pauseAudio();
                                    audioState = "Paused";
                                  }
                                }),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Container(
                                    child: playButton,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              //Icon(Icons.play_arrow_outlined),
                              Icon(Icons.skip_next),
                              GestureDetector(
                                onTap: () => setState(() {
                                  if (tappingRepeat == 0) {
                                    repeatButton =
                                        Icon(Icons.repeat_on_rounded);
                                    tappingRepeat = 1;
                                  } else if (tappingRepeat == 1) {
                                    repeatButton = Icon(Icons.repeat_one);
                                    tappingRepeat = 2;
                                  } else {
                                    repeatButton = Icon(Icons.repeat);
                                    tappingRepeat = 0;
                                  }
                                }),
                                child: repeatButton,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 98,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10,
                      child: Container(
                        width: 380,
                        height: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff7f858a),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Lyrics",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Yaar hus raha hai barish ki jayein tere badlo ko barish ki jayein par voh hus nhi raha isliye barish nhi ho rahi maa chudao.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
