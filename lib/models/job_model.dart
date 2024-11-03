class JobModel {
  String title;
  String type;
  String salary;
  String company;
  String logo;
  String city;
  String time;

  JobModel({
    required this.title,
     this.type = 'Full Time',
    required this.salary,
    required this.company,
    required this.logo,
    required this.city,
    required this.time,
  });
}
