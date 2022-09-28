class Stop {
  String id;
  String name;
  String location;
  String description;
  String imageUrl;
  DateTime time;

  Stop(this.id, this.name, this.location, this.description, this.imageUrl, this.time);
}


Stop stopSample1 = Stop('1-1', 'Bukit Panjang MRT Station', '', 'Exit A, bus stop', 'https://upload.wikimedia.org/wikipedia/commons/e/ee/DT1_BP6_Bukit_Panjang_MRT_Exit_A1.jpg', DateTime.parse("2022-09-26 08:00"));
Stop stopSample2 = Stop('1-2', 'Newton MRT Station', '', 'Exit A, bus stop ', 'https://upload.wikimedia.org/wikipedia/commons/d/dd/NS21_Newton_MRT_Exit_A_20210331_132059.jpg', DateTime.parse("2022-09-26 08:15"));
Stop stopSample3 = Stop('1-2', 'Bugis MRT Station', '', 'Exit D, bus stop ', 'https://upload.wikimedia.org/wikipedia/commons/0/0c/EW12_DT14_Bugis_Exit_D_20200907_170339.jpg', DateTime.parse("2022-09-26 08:40"));
Stop stopSample4 = Stop('1-2', 'SMU School of Law', '', 'Outside main entrance ', 'https://upload.wikimedia.org/wikipedia/commons/e/e2/School_of_Law%2C_Singapore_Management_University_-_20170103-01.jpg', DateTime.parse("2022-09-26 09:10"));
Stop stopSample5 = Stop('1-2', 'SMU School of Computing and Information Systems', '', 'Outside main entrance', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Singapore_Management_University_14%2C_Aug_06.JPG', DateTime.parse("2022-09-26 09:10"));
Stop stopSample6 = Stop('1-2', 'SMU School of Economics', '', 'Outside main entrance', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Singapore_Management_University_11.JPG', DateTime.parse("2022-09-26 09:10"));
Stop stopSample7 = Stop('1-2', 'SMU Admin Building', '', 'Outside main entrance ', 'https://upload.wikimedia.org/wikipedia/commons/1/10/Singapore_Management_University_20%2C_Aug_06.JPG', DateTime.parse("2022-09-26 09:10"));
Stop stopSample8 = Stop('1-2', 'Changi Airport', '', 'Terminal 1, Departure Driveway', 'https://upload.wikimedia.org/wikipedia/commons/8/83/Changi_Airport%2C_Terminal_1%2C_Departure_Driveway_4.JPG', DateTime.parse("2022-09-26 09:10"));
Stop stopSample9 = Stop('1-2', 'Hougang MRT Station', '', 'Exit A, bus interchange ', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Hougang_Central_Bus_Interchange%2C_Oct_06.JPG', DateTime.parse("2022-09-26 09:10"));
Stop stopSample10 = Stop('1-2', 'Ang Mo Kio MRT Station', '','Exit C, bus stop', 'https://upload.wikimedia.org/wikipedia/commons/3/3c/NS16_Ang_Mo_Kio_MRT_Exit_C_20201105_140926.jpg', DateTime.parse("2022-09-26 09:10"));