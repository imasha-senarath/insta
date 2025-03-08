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
      image: "https://source.unsplash.com/random/400x300",
      caption: "Enjoying the sunset! 🌅",
      time: "13 hours ago",
      date: "2025-03-08",
    ),
    Post(
      id: "2",
      user: "1",
      image: "https://source.unsplash.com/random/401x301",
      caption: "Having a great coffee ☕",
      time: "12 hours ago",
      date: "2025-03-08",
    ),
    Post(
      id: "3",
      user: "1",
      image: "https://source.unsplash.com/random/402x302",
      caption: "Nature is amazing! 🌿",
      time: "4 days ago",
      date: "2025-03-07",
    ),
    Post(
      id: "4",
      user: "4",
      image: "https://source.unsplash.com/random/403x303",
      caption: "Exploring new places! 🏕️",
      time: "1 hour ago",
      date: "2025-03-06",
    ),
  ];
}
