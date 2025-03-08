class Post {
  final String id;
  final String user;
  final String image;
  final String caption;
  final String time;
  final String date;

  Post({
    required this.id,
    required this.user,
    required this.image,
    required this.caption,
    required this.time,
    required this.date,
  });

  static List<Post> dummyPosts = [
    Post(
      id: "1",
      user: "5",
      image: "https://picsum.photos/seed/picsum/200/300",
      caption: "Enjoying the sunset! 🌅",
      time: "13 hours ago",
      date: "2025-03-08",
    ),
    Post(
      id: "2",
      user: "1",
      image: "https://www.imashasenarath.com/images/site-assets/display-image-2.jpg",
      caption: "Hey 👋 It’s me 👽",
      time: "12 hours ago",
      date: "2025-03-08",
    ),
    Post(
      id: "3",
      user: "2",
      image: "https://picsum.photos/100/300/?blur",
      caption: "Nature is amazing! 🌿",
      time: "4 days ago",
      date: "2025-03-07",
    ),
    Post(
      id: "4",
      user: "4",
      image: "https://picsum.photos/100/300/?blur",
      caption: "Exploring new places! 🏕️",
      time: "1 hour ago",
      date: "2025-03-06",
    ),
  ];
}
