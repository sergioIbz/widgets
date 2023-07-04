import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title,
    this.caption,
    this.imageUrl,
  );
}

final slides = <SlideInfo>[
  SlideInfo(
    'busca la comida',
    'Exercitation dolore sit anim ex irure adipisicing minim Lorem.',
    'assets/Images/1.png',
  ),
  SlideInfo(
    'entrega rapida',
    'Sit eu enim enim aliqua adipisicing nostrud aliquip dolor elit Lorem eu id excepteur fugiat.',
    'assets/Images/2.png',
  ),
  SlideInfo(
    'disfruta la comiA',
    'Amet sunt culpa et cillum eiusmod aliquip aute labore aute adipisicing incididunt.',
    'assets/Images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();
  bool isFinal = false;
  @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
     
      final page = pageviewController.page ?? 0;
      if (!isFinal && page >= (slides.length - 1.2)) {
        setState(() {
          isFinal = true;
        });
      } 
      
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(
          controller: pageviewController,
          physics: const BouncingScrollPhysics(),
          children: slides
              .map(
                (slideData) => _Slide(slideData),
              )
              .toList(),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('skip'),
          ),
        ),
        isFinal
            ? Positioned(
                bottom: 30,
                right: 30,
                child: FadeInRight(
                  from: 15,
                  delay: const Duration(seconds: 1),
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('Continuar'),
                  ),
                ),
              )
            : const SizedBox(),
      ]),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slideInfo;
  const _Slide(this.slideInfo);

  @override
  Widget build(BuildContext context) {
    final titleStile = Theme.of(context).textTheme.titleLarge;
    final captionStile = Theme.of(context).textTheme.bodySmall;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(slideInfo.imageUrl),
              const SizedBox(height: 20),
              Text(
                slideInfo.title,
                style: titleStile,
              ),
              const SizedBox(height: 10),
              Text(
                slideInfo.caption,
                style: captionStile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
