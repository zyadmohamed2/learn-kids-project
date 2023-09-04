import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn/constant/styles.dart';

class LettersScreen extends StatefulWidget {
  const LettersScreen({super.key});

  @override
  State<LettersScreen> createState() => _LettersScreenState();
}

class _LettersScreenState extends State<LettersScreen>
    with SingleTickerProviderStateMixin {
  bool isPlay = false;
  IconData icon = Icons.play_arrow;
  final player = AudioPlayer();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  List<String> imagesOfLetter = [
    'https://www.belarabyapps.com/wp-content/uploads/2020/01/alf-arabic-alphabet-story.jpg',
    'https://www.belarabyapps.com/wp-content/uploads/2020/01/baa-arabic-alphabet-story-1.jpg',
    'https://www.belarabyapps.com/wp-content/uploads/2020/07/geem-arabic-alphabet-story-.jpg',
  ];
  List soundOfLetters = [
    '2lf.mp3',
    'ba2.mp3',
    'gim.mp3',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff8AC926),
          title: const Text('الحروف'),
          centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
            player.pause();
          }, icon: const Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                isPlay = !isPlay;
                if (isPlay) {
                  player.play(AssetSource(soundOfLetters[index]));

                } else {
                  setState(() {
                    player.pause();
                  });
                }
                activeIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(imagesOfLetter[index]),
                        width: double.maxFinite,
                        height: 200,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width -
                                      30 * 3),
                              child: const Text(
                                'اطغط للأستماع',
                                style: Styles.style24,
                              )),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: AnimatedIcon(
                              icon: activeIndex != index || !isPlay
                                  ? AnimatedIcons.play_pause
                                  : AnimatedIcons.pause_play,
                              size: 30.0,
                              progress: _animationController,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
