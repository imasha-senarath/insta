class User {
  final String id;
  final String name;
  final String image;

  User({
    required this.id,
    required this.name,
    required this.image,
  });

  static List<User> dummyUsers = [
    User(id: '1', name: 'imasha.online', image: 'https://www.imashasenarath.com/images/site-assets/display-image-2.jpg'),
    User(id: '2', name: 'nimali96', image: 'https://randomuser.me/api/portraits/women/2.jpg'),
    User(id: '3', name: 'michael', image: 'https://randomuser.me/api/portraits/men/3.jpg'),
    User(id: '4', name: 'aruni', image: 'https://randomuser.me/api/portraits/women/5.jpg'),
    User(id: '5', name: 'emily', image: 'https://randomuser.me/api/portraits/women/4.jpg'),
  ];

  static User? getUserById(String id) {
    return dummyUsers.firstWhere((user) => user.id == id, orElse: () => User(id: '', name: 'Unknown', image: ''));
  }
}
