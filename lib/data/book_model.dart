class BookModel {
  final int number;
  final String title;
  final String originalTitle;
  final String releaseDate;
  final String description;
  final int pages;
  final String cover;
  final int index;

  BookModel({
    required this.number,
    required this.title,
    required this.originalTitle,
    required this.releaseDate,
    required this.description,
    required this.pages,
    required this.cover,
    required this.index,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      number: json['number'],
      title: json['title'],
      originalTitle: json['originalTitle'],
      releaseDate: json['releaseDate'],
      description: json['description'],
      pages: json['pages'],
      cover: json['cover'],
      index: json['index'],
    );
  }

}

/**
 * {
    "number": 5,
    "title": "Harry Potter and the Order of the Phoenix",
    "originalTitle": "Harry Potter and the Order of the Phoenix",
    "releaseDate": "Jun 21, 2003",
    "description": "In his fifth year at Hogwarts, Harry discovers that many members of the wizarding community do not know the truth about his encounter with Lord Voldemort. Cornelius Fudge, Minister of Magic, appoints Dolores Umbridge as Defense Against the Dark Arts teacher because he believes that Professor Dumbledore plans to take over his job. But his teachings are inadequate, so Harry prepares the students to defend the school against evil.",
    "pages": 766,
    "cover": "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/covers/5.png",
    "index": 4
  }
 */