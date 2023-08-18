import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String num = '12';
  
  List<Map<dynamic, dynamic>> items = [
    {'icon': FontAwesomeIcons.bookBookmark, 'label': 'Programs'},
    {'icon': FontAwesomeIcons.question, 'label': 'Get Help'},
    {'icon': FontAwesomeIcons.bookOpen, 'label': 'Learn'},
    {'icon': Icons.lock_outline, 'label': 'DD Tracker'},
  ];

  List<Map<String, String>> content1 = [
    {
      'image': 'assets/images/image1.png',
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'lessons': '12'
    },
    {
      'image': 'assets/images/image1.png',
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'lessons': '12'
    },
    {
      'image': 'assets/images/image1.png',
      'title': 'Lifestyle',
      'subtitle': 'A complete guide for your new born baby',
      'lessons': '12'
    },
  ];

  List<Map<String, String>> content2 = [
    {
      'image': 'assets/images/image3.png',
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date': '12 feb,Sunday',
      'time': '3 min'
    },
    {
      'image': 'assets/images/image3.png',
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date': '12 feb,Sunday',
      'time': '3 min'
    },
    {
      'image': 'assets/images/image3.png',
      'title': 'Babycare',
      'subtitle': 'Understanding of human behaviour',
      'date': '12 feb,Sunday',
      'time': '3 min'
    },
  ];

  Widget _tabs(var value) {
    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(value['icon'], color: Colors.blue),
          Text(
            value['label'],
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          )
        ],
      ),
    );
  }

  Widget _frame1(var content) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 300,
      child: Card(
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(content['image']), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content['title'],
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    content['subtitle'],
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$num Lessons',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _frame2(var content) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 300,
      child: Card(
        elevation: 10,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(content['image']), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content['title'],
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  content['subtitle'],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      content['date'],
                      style: TextStyle(fontSize: 15),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Book",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _frame3(var content) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 300,
      child: Card(
        elevation: 10,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(content['image']), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content['title'],
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  content['subtitle'],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      content['time'],
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                          size: 30,
                          color: Colors.grey.shade500,
                        ))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const FaIcon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(Icons.messenger_outline)),
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell))
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 280,
            width: double.maxFinite,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 225, 236, 255)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello, Priya!",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("What do you wanna learn today?",
                    style: TextStyle(color: Colors.black38, fontSize: 17)),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 115,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [_tabs(items[0]), _tabs(items[1])],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [_tabs(items[2]), _tabs(items[3])],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            // color: Colors.amber,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Programs for you",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text("View all",
                        style: TextStyle(fontSize: 17, color: Colors.black45)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_outlined, color: Colors.black45)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 310,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _frame1(content1[0]),
                _frame1(content1[1]),
                _frame1(content1[2]),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            // color: Colors.amber,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Events and experiences",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    TextButton(
                        child: const Text("View all",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black45)),
                        onPressed: () {}),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.arrow_forward_outlined,
                        color: Colors.black45)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 320,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              _frame2(content2[0]),
              _frame2(content2[1]),
              _frame2(content2[2]),
            ]),
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            // color: Colors.amber,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lessons for you",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text("View all",
                        style: TextStyle(fontSize: 17, color: Colors.black45)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_outlined, color: Colors.black45)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 323,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              _frame3(content2[0]),
              _frame3(content2[1]),
              _frame3(content2[2]),
            ]),
          ),
        ],
      )),
    );
  }
}
