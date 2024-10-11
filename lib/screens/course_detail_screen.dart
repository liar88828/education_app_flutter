import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWeight = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton.filled(
                iconSize: 35,
                style: IconButton.styleFrom(
                    backgroundColor: Colors.orange.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
            FilledButton(
                style: FilledButton.styleFrom(
                    fixedSize: Size(260, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  'Join Course',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        actions: [],
        leading: BackButton(),
        title: Text('Web Design Course'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/images/web design.png',
                height: screenHeight * 0.3,
                width: double.infinity,
                fit: BoxFit.cover),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Web Design Course',
                        style: TextStyle(
                            // color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.4,
                        color: Colors.orange,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 12',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('4.3', style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10),
                                  Icon(Icons.star, color: Colors.yellow),
                                ])
                          ]),
                    ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoCard(Icons.book, '24', 'Classess', screenHeight,
                        screenWeight),
                    InfoCard(Icons.access_time, '2 hours', 'Time', screenHeight,
                        screenWeight),
                    InfoCard(
                        Icons.chair, '36', 'Seats', screenHeight, screenWeight)
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget InfoCard(IconData icon, String title, String subTitle,
      double screenHeight, double screenWeight) {
    return Container(
      height: screenHeight * 0.15,
      width: screenWeight * 0.3,
      child: Card(
        semanticContainer: true,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(icon, color: Colors.orange),
              Text(
                title,
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                subTitle,
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
