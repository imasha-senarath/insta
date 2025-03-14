class Story {
  final String id;
  final String user;
  final List<String> content;
  final String time;
  final String date;

  Story({
    required this.id,
    required this.user,
    required this.content,
    required this.time,
    required this.date,
  });

  static List<Story> dummyStories = [
    Story(
      id: '1',
      user: '1',
      content: ['https://picsum.photos/seed/picsum/200/300'],
      time: '10:30 AM',
      date: '2025-03-08',
    ),
    Story(
      id: '2',
      user: '5',
      content: ['https://images.pexels.com/photos/258421/pexels-photo-258421.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
      time: '2h',
      date: '2025-03-08',
    ),
    Story(
      id: '3',
      user: '2',
      content: ['https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
      time: '4h',
      date: '2025-03-07',
    ),
    Story(
      id: '4',
      user: '4',
      content: ['https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
      time: '7h',
      date: '2025-03-07',
    ),
    Story(
      id: '5',
      user: '3',
      content: ['https://picsum.photos/seed/picsum/200/300'],
      time: '15h',
      date: '2025-03-07',
    ),
    Story(
      id: '6',
      user: '7',
      content: ['https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'],
      time: '20h',
      date: '2025-03-07',
    ),
    Story(
      id: '7',
      user: '6',
      content: ['https://picsum.photos/seed/picsum/200/300'],
      time: '20h',
      date: '2025-03-07',
    ),
  ];
}
