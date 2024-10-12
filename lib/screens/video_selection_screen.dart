import 'package:flutter/material.dart';

class VideoSelectionScreen extends StatelessWidget {
  const VideoSelectionScreen({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Video'),
    Tab(text: 'Description'),
  ];

  static List videoList = [
    'Introduction To Web Design',
    "Setup and Instalation",
    'Creating Web',
    "Design First Website"
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    var videoWidget = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/images/web design.png',
              height: screenHeight * 0.3,
              width: double.infinity,
              fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text('Web Design Complete Course',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          const Text('created by: Brian'),
          const SizedBox(height: 20),
          ListView.builder(
              itemCount: videoList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(videoList[index]),
                    subtitle: Text('20 min 40 sec'),
                    leading: IconButton(
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      color: index == 0
                          ? Colors.orange
                          : Colors.orange.withOpacity(.5),
                    ));
              })
        ],
      ),
    );
    var descriptionWidget = Container(
      padding: EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What is Lorem Ipsum?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          Text(
            'Sabtu, 12 Oktober 2024',
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 20),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          SizedBox(height: 20),
          //
          Row(children: [
            Text('Course Length: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Icon(Icons.timer, color: Colors.orange),
            Text('26 Hours',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ]),
          Row(children: [
            Text('Rating: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Icon(Icons.star, color: Colors.orange),
            Text('4.5',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ]),
        ],
      ),
    );
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
                onPressed: () {}, child: Icon(Icons.play_arrow)),
            appBar: AppBar(
                leading: BackButton(),
                title: Text('Web Design'),
                centerTitle: true,
                bottom: const TabBar(tabs: myTabs),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
                ]),
            body: TabBarView(
              children: [videoWidget, descriptionWidget],
            )));
  }
}
