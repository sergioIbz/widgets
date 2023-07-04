import 'package:flutter/material.dart';

class SwiperScreen extends StatefulWidget {
  static const name = 'swiperScreen';
  const SwiperScreen({super.key});

  @override
  State<SwiperScreen> createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  final PageController pageController = PageController();
  int contador = 1;
  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      double aux = pageController.page ?? 0;
      contador = aux.toInt() + 1;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Swiper'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  PageView(
                    controller: pageController,
                    children: [
                      Image.asset(
                        'assets/Images/1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/Images/2.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/Images/3.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Text(
                        '$contador/3',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: contador==1? Colors.blueAccent:Colors.grey,
                  radius: 8,
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: contador==2? Colors.blueAccent:Colors.grey,
                  radius: 8,
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: contador==3? Colors.blueAccent:Colors.grey,
                  radius: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
