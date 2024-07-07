import 'package:flutter/material.dart';

void main() {
  runApp(const MyBio());
}

class MyBio extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyBio({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showDescription = false; // Set this to control visibility

  void myBioDescription() {
    setState(() {
      showDescription = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4e6eb),
      appBar: AppBar(
        title: const Text("My Home Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 75),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/image.png",
                ),
              ),
            ),
            ElevatedButton( 
              onPressed: () => myBioDescription(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: const Text(
                "VIEW MY BIO!",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Visibility(
                visible: showDescription, // Set to true to show, false to hide
                child: const Column(
                  children: [
                    Text(
                      "Greetings, dear readers! I'm Judy Ann P. Flores, born on January 31, 2002, in the town of Botao, Santa Barbara, Pangasinan. As an Aquarius, I'm a naturally curious individual on a lifelong adventure to uncover the wonders of the world. Join me as I share the stories of my life, brimming with experiences, dreams, and aspirations.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "I come from Botao,a barangay where life is wonderfully simple, and the scenery is serene. Here, there are many joys and sorrows experienced. My mom played an important role in my development, teaching me to appreciate every moment, and guiding me in anything I wanted to do.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Currently, I'm a dedicated third-year college student, pursuing a Bachelor of Science in Information Technology at Pangasinan State University, Urdaneta Campus. My academic journey has been transformative, immersing me in the world of digital innovation and problem-solving. It's not just about earning a degree; it's about leveraging technology to create a better future.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Beyond my studies, I'm passionate about various hobbies, I love trying different foods. Also, playing chess has been my interest since high school, offering intricate strategies and intellectual challenges. I'm drawn to music, both as a dedicated listener and an occasional singer. When I need to unwind, I immerse myself in the captivating stories woven by watching movies.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "One of the most rewarding experiences of my life took place in high school. Chess changed from a game to a strategic battle, and I always emerged as the champion on campus. These intense battles taught me valuable lessons in patience, understanding, and the eagerness of a well-rounded move.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "While I love my homeland here in the Philippines, a strong desire to explore the world tugs at my heart. I dream of traveling and immersing myself in diverse cultures, landscapes, and cuisines. Whether it's the bustling streets of Tokyo or the tranquil beaches of Bali, each destination promises an opportunity to broaden my horizons and gain a deeper understanding of our global community.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
