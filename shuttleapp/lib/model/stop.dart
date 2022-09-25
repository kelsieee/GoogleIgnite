class Stop {
  String id;
  String name;
  String location;
  String description;
  String imageUrl;
  String time;

  Stop(this.id, this.name, this.location, this.description, this.imageUrl, this.time);
}


Stop stopSample1 = Stop('1-1', 'Cashew', 'Cashew Drive', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Dog_Breeds.jpg/800px-Dog_Breeds.jpg', '');
Stop stopSample2 = Stop('1-1', 'Newton', 'Newton Hawker Centre', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Golde33443.jpg/497px-Golde33443.jpg?20120228023314', '');