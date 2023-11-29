class Book {
  String name;
  String author;
  String shortDescription;
  String rating;
  String category;
  String description;
  String imageAsset;

  Book({
    required this.name,
    required this.author,
    required this.shortDescription,
    required this.rating,
    required this.category,
    required this.description,
    required this.imageAsset,
  });
}

var bookList = [
  Book(
    name: 'Atomic Habits',
    author: 'James Clear',
    shortDescription:
        'An Easy & Proven Way to Build Good Habits & Break Bad Ones',
    rating: '4.7',
    category: 'Routines & Habits',
    description:
        "'Atomic Habits' by James Clear is a practical guide on developing sustainable habits. It encourages small, consistent changes that can lead to immense personal growth.",
    imageAsset: 'images/atomic_habits.webp',
  ),
  Book(
    name: 'The 5 AM Club',
    author: 'Robin Sharma',
    shortDescription: 'Own Your Morning. Elevate Your Life.',
    rating: '4.7',
    category: 'Productivity',
    description:
        "The 5 AM Club (2018) shows how embracing a revolutionary morning routine can deliver epic results. Through the enchanting story of an entrepreneur, an artist, and their eccentric billionaire mentor, it explains how you can use the first hour of your day to drive personal growth and get the most out of life.",
    imageAsset: 'images/5-am-club.webp',
  ),
  Book(
    name: 'Atomic Habits',
    author: 'James Clear',
    shortDescription:
        'An Easy & Proven Way to Build Good Habits & Break Bad Ones',
    rating: '4.7',
    category: 'Routines & Habits',
    description:
        "'Atomic Habits' by James Clear is a practical guide on developing sustainable habits. It encourages small, consistent changes that can lead to immense personal growth.",
    imageAsset: 'images/atomic_habits.webp',
  ),
  Book(
    name: 'Human Compatible',
    author: 'Stuart Russell',
    shortDescription: 'Artificial Intelligence and the Problem of Control',
    rating: '4.5',
    category: 'Technology & Future',
    description:
        "Human Compatible (2019) explains why the creation of a superintelligent artificial intelligence could be humanity’s final act. The blinks call to attention the potential catastrophe that humanity is heading towards, and discuss what needs to be done to avoid it. If we’re to ensure AI remains beneficial to humans in the long run, we may need to radically rethink its design.",
    imageAsset: 'images/human_compatible.webp',
  ),
  Book(
    name: 'The Subtle Art of Not Giving a F*ck',
    author: 'Mark Manson',
    shortDescription: 'A Counterintuitive Approach to Living a Good Life',
    rating: '4.3',
    category: 'Personal Development',
    description:
        "The Subtle Art of Not Giving a F*ck (2016) lays out how to live a better life by caring about fewer things. If you follow few simple rules, you can enjoy a happier, less stressful existence.",
    imageAsset: 'images/not-giving-a-fck.webp',
  ),
  Book(
    name: 'Rich Dad, Poor Dad',
    author: 'Robert T. Kiyosaki',
    shortDescription:
        'What the Rich Teach Their Kids about Money – That the Poor and the Middle Class Do Not!',
    rating: '4.6',
    category: 'Routines & Habits',
    description:
        "Combining autobiography and personal advice, Rich Dad, Poor Dad (1997) outlines how you can become financially independent and wealthy. The author argues that what he teaches in this New York Times best seller are things we’re never taught in society, and that what the upper-class passes on to its children is the necessary knowledge for getting (and staying) rich. As evidence to support his claims, he cites his highly successful career as an investor and his retirement at the early age of 47.",
    imageAsset: 'images/rich-dad.webp',
  ),
];
