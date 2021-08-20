// import 'dart:convert';

// List<Employee> employeeFromJson(String str) =>
//     List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

// String employeeToJson(List<Employee> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Employee {
//   int id;
//   String email;
//   String name;
//   String username;

//   Employee({
//     this.id,
//     this.email,
//     this.name,
//     this.username,
//   });

//   factory Employee.fromJson(Map<String, dynamic> json) => Employee(
//         id: json["id"],
//         email: json["email"],
//         name: json["name"],
//         username: json["username"],
//         // avatar: json["avatar"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "email": email,
//         "name": name,
//         "username": username,
//         // "avatar": avatar,
//       };
// }