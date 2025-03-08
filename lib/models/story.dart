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
      content: [
        'https://source.unsplash.com/random/800x600?nature',
        'https://source.unsplash.com/random/800x600?water'
      ],
      time: '10:30 AM',
      date: '2025-03-08',
    ),
    Story(
      id: '2',
      user: '5',
      content: [
        'https://source.unsplash.com/random/800x600?mountain',
      ],
      time: '12:00 PM',
      date: '2025-03-08',
    ),
    Story(
      id: '3',
      user: '2',
      content: [
        'https://source.unsplash.com/random/800x600?city',
        'https://source.unsplash.com/random/800x600?night',
      ],
      time: '2:15 PM',
      date: '2025-03-07',
    ),
    Story(
      id: '4',
      user: '4',
      content: [
        'https://source.unsplash.com/random/800x600?beach',
      ],
      time: '5:45 PM',
      date: '2025-03-07',
    ),
    Story(
      id: '5',
      user: '3',
      content: [
        'https://source.unsplash.com/random/800x600?beach',
      ],
      time: '5:45 PM',
      date: '2025-03-07',
    ),
  ];
}
