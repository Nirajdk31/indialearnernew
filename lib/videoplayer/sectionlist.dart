
import 'package:india_learner_app/videoplayer/vidplayerllist.dart';

class VideoSections{
  final String number;
  final String title;
  final List<MyVideoList> videolist;

  VideoSections({
    required this.number,
    required this.title,
    required this.videolist,
  });
}

List<VideoSections> vidSection = [
  VideoSections(
    number: "1",
    title: "Introduction",
    videolist: [
      MyVideoList(
        title: "Welcome to the Course",
        courseTime: "3:46 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "A Look at the Course Project",
        courseTime: "5:22 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Environment & Setup",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Link to Project Files",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
    ]
  ),
  VideoSections(
    number: "2",
    title: "Express & MongoDB Setup",
    videolist: [
      MyVideoList(
        title: "MongoDB Atlas Setup",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Install Dependencies",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Connecting to MongoDB",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Route Files with Express Router",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
    ]
  ),
  VideoSections(
    number: "3",
    title: "User API Routes & JWT Authentication",
    videolist: [
      MyVideoList(
        title: "MongoDB Atlas Setup",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Install Dependencies",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Connecting to MongoDB",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
      MyVideoList(
        title: "Route Files with Express Router",
        courseTime: "6:33 mins",
        urlImage: "assets/images/mern.jpg",
      ),
    ]
  ),
];