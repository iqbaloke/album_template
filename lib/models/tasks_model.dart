class TasksModel{
  final int number;
  final String name;
  final int isActive;

  TasksModel({required this.number, required this.name, required this.isActive});

  factory TasksModel.fromJson(Map<String, dynamic> json){
    return TasksModel(number: json['number'], name: json['name'], isActive: json['isActive']);
  }
  
}