import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/constant/styles.dart';
import 'letters_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();

  List<String> animals = [
    'assets/images/fox.png',
    'assets/images/horse.png',
    'assets/images/lion_8686277 (1).png',
  ];

  String? selectItem;
  double padding = 6.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              const SizedBox(
                  width: double.maxFinite,
                  child: Image(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover,
                  )),
              Text(
                'Choose your character',
                style: Styles.style20.copyWith(color: const Color(0xffA6A6A6)),
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: 260.0,
                width: 250,
                child: Stack(
                  children: [
                    Positioned(
                      top: 130.0,
                      child: SvgPicture.asset(
                        'assets/svg/zoom character.svg',
                        width: 250,
                      ),
                    ),
                    Image(
                      width: 214.0,
                      height: 214.0,
                      image: AssetImage(selectItem ?? animals[0]),
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 62.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LettersScreen()));
                  },
                  onTapDown: (_)=>setState(() {
                    padding = 0.0;
                  }),
                  onTapUp: (_)=>setState(() {
                    padding = 6.0;
                  },
                  ),
                  child: AnimatedContainer(
                    padding: EdgeInsets.only(bottom: padding),
                    decoration: BoxDecoration(
                      color: const Color(0xff518551),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    duration: const Duration(milliseconds: 100),
                    child: Container(
                      height: 52.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff8AC926),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Center(
                        child: Text(
                          'Start',
                          style: Styles.style24.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: Stack(
                  children: [
                    const SizedBox(
                      width: double.maxFinite,
                      child: Image(
                        image: AssetImage(
                            'assets/images/background character 1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListView.builder(
                      controller: scrollController,
                      physics: const BouncingScrollPhysics(),
                      reverse: true,
                      itemCount: animals.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 5.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectItem = animals[index];
                            });
                          },
                          child: Image(
                            image: AssetImage(animals[index].toString()),
                            fit: BoxFit.contain,
                            width: selectItem == animals[index] ? 145.0 : 110.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
