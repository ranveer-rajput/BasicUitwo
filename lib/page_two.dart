import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 65,
                left: 20,
              ),
              child: Text(
                "What would you like \nto learn today?",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: Center(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.mic),
                            hintText: "Search courses mentor etc"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey.shade300,
                  ),
                  child: const Icon(Icons.format_list_bulleted),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const NewWidget(
              text: 'Mentors',
              text2: 'Trending',
            ),
            const SizedBox(
              height: 8,
            ),
            const NewWidgetTwo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const NewWidget(text: "Cources", text2: "Popular"),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    HobbyWidget(
                      width: 89,
                      textColor: Colors.white,
                      text: 'Design',
                      containerColor: Colors.black,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    HobbyWidget(
                      width: 100,
                      text: 'coding',
                      textColor: Colors.black,
                      containerColor: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    HobbyWidget(
                        width: 130,
                        text: 'Devlopment',
                        textColor: Colors.black,
                        containerColor: Colors.white),
                    SizedBox(
                      width: 7,
                    ),
                    HobbyWidget(
                        width: 120,
                        text: "python",
                        textColor: Colors.black,
                        containerColor: Colors.white)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.89,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 208, 207, 240),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Become a UI designer",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                      const Text(
                        "Learn the most useful skill these days",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: Colors.grey,
                          ),
                          Text(
                            "32h",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.view_stream_sharp,
                            color: Colors.grey,
                          ),
                          Text(
                            "64 Lessons",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "4.9",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.star,
                              size: 20,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "rating",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("(1.3k reviews)"),
                          ),
                          const SizedBox(width: 55),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 25,
                            ),
                            child: Container(
                              width: 60,
                              height: 55,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(8)),
                                  color: Colors.white),
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///
/// cources widget
///
class HobbyWidget extends StatelessWidget {
  final double width;
  final String text;
  final Color textColor;
  final Color containerColor;
  const HobbyWidget({
    super.key,
    required this.width,
    required this.text,
    required this.textColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: containerColor,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
    );
  }
}

///
/// card wideget
///
class NewWidgetTwo extends StatelessWidget {
  const NewWidgetTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.166,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(12),
            ),
            color: Color.fromARGB(255, 247, 192, 210)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.112,
                width: MediaQuery.of(context).size.width * 0.16,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(19),
                      bottomLeft: Radius.circular(19),
                      bottomRight: Radius.circular(6),
                    ),
                    color: Colors.white),
                child: Image.asset(
                  "assets/undraw.png",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Antor Paul",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                const Text(
                  "UX Designer",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red.shade400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "22 Cources",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 43,
                    ),
                    Container(
                      height: 45,
                      width: 47,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                      child: const Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///
///whic card it is widget
///
class NewWidget extends StatelessWidget {
  final String text;
  final String text2;
  const NewWidget({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          ),
          const Expanded(child: SizedBox()),
          Text(
            text2,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
          ),
          const Icon(Icons.keyboard_arrow_down_outlined),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
