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
      image: "https://images.pexels.com/photos/790357/pexels-photo-790357.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      caption: "Living my story, my way ✨",
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
      image: "https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      caption: "Simple but significant 🔥✨",
      time: "4 days ago",
      date: "2025-03-07",
    ),
    Post(
      id: "4",
      user: "4",
      image: "https://images.pexels.com/photos/3217911/pexels-photo-3217911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      caption: "Exploring new places! 🏕️",
      time: "1 hour ago",
      date: "2025-03-06",
    ),
    Post(
      id: "4",
      user: "3",
      image: "https://images.pexels.com/photos/3621344/pexels-photo-3621344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      caption: "Nature is amazing! 🌿",
      time: "1 hour ago",
      date: "2025-03-06",
    ),
  ];
}
