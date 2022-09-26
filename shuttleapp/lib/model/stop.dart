class Stop {
  String id;
  String name;
  String location;
  String description;
  String imageUrl;
  DateTime time;

  Stop(this.id, this.name, this.location, this.description, this.imageUrl, this.time);
}


Stop stopSample1 = Stop('1-1', 'Bukit Panjang MRT Station', '', 'Taxi Stand', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Dog_Breeds.jpg/800px-Dog_Breeds.jpg', DateTime.parse("2022-09-26 08:00"));
Stop stopSample2 = Stop('1-2', 'Newton MRT Station', '', 'Exit B, bus stop ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/497px-Golde33443.jpg?20120228023314', DateTime.parse("2022-09-26 08:15"));
Stop stopSample3 = Stop('1-2', 'Bugis MRT Station', '', 'Exit A, bus stop ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/497px-Golde33443.jpg?20120228023314', DateTime.parse("2022-09-26 08:40"));
Stop stopSample4 = Stop('1-2', 'Expo MRT Station', '', 'Exit F, bus stop ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/497px-Golde33443.jpg?20120228023314', DateTime.parse("2022-09-26 09:10"));