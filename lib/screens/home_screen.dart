import 'package:education_app/main_screen.dart';
import 'package:education_app/widgets/myanimated_bottom_navigation.dart';
import 'package:education_app/widgets/myfloating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> bgColor = [
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.blue,
  ];

  List<String> containerList = [
    'Category',
    'Bountique Class',
    'Free Course',
    'BookStore',
    'Live Course',
    "Leaderbook"
  ];

  List<String> courseImages = [
    'lib/images/image1.png',
    'lib/images/image2.png',
    'lib/images/image3.png',
  ];

  List<String> courseTitle = [
    "Flutter Course",
    "Web Course",
    "React Course",
  ];

  List<String> courseRating = [
    "8.6",
    "8.0",
    "7.6",
  ];

  List<Color> courseColor = [
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWeight = MediaQuery.of(context).size.width;

    List<Icon> IconsList = [
      Icon(
        Icons.file_copy,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
      Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
      Icon(
        Icons.padding_sharp,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
      Icon(
        Icons.store,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
      Icon(
        Icons.video_camera_back_rounded,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
      Icon(
        Icons.leaderboard,
        color: Colors.white,
        size: screenWeight * 0.07,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: MyAnimatedBottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MyFloatingActionButton(),
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Hello, Dear Programer'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Row(
              children: [
                Text('Chosee your course '),
                Text(
                  'right way',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
                decoration: InputDecoration(
                    hintText: 'Search for your grades, course and training',
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(
                      Icons.search,
                    ))),
            const SizedBox(height: 20),
            GridView.builder(
                shrinkWrap: true,
                itemCount: bgColor.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: screenWeight / (screenWeight * 0.7)),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        // height: screenWeight * 0.15,
                        // width: screenWeight * 1,
                        child: Column(
                          children: [
                            IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: bgColor[index]),
                                onPressed: () {},
                                icon: IconsList[index]),
                            SizedBox(height: screenHeight * 0.01),
                            Text(containerList[index])
                          ],
                        ),
                      )
                    ],
                  );
                }),
            const SizedBox(height: 20),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Recomendation Course',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ))
              ]),
              SizedBox(
                height: screenHeight * 0.22,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courseImages.length,
                    itemBuilder: (context, index) {
                      return CourseItem(
                        screenWeight: screenWeight,
                        courseColor: courseColor,
                        courseImages: courseImages,
                        screenHeight: screenHeight,
                        courseTitle: courseTitle,
                        courseRating: courseRating,
                        index: index,
                      );
                    }),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({
    super.key,
    required this.screenWeight,
    required this.courseColor,
    required this.courseImages,
    required this.screenHeight,
    required this.courseTitle,
    required this.courseRating,
    required this.index,
  });

  final double screenWeight;
  final List<Color> courseColor;
  final List<String> courseImages;
  final double screenHeight;
  final List<String> courseTitle;
  final List<String> courseRating;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        // height: screenHeight * 0.8,
        width: screenWeight * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // onTap: () {},
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: courseColor[index],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              courseImages[index],
              height: screenHeight * 0.09,
              width: screenWeight * 0.3,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseTitle[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(courseRating[index]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(
                          //   width: 1,
                          // ),
                          RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              maxRating: 5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: screenWeight * 0.03,
                              unratedColor: Colors.grey,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, index) =>
                                  const Icon(Icons.star, color: Colors.yellow)),
                          IconButton(
                              constraints: const BoxConstraints(
                                  maxHeight: 50, maxWidth: 50),
                              padding: const EdgeInsets.all(4),
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              color: Colors.white,
                              icon: const Icon(Icons.favorite, size: 19))
                        ]),
                  ])),
        ]));
  }
}
