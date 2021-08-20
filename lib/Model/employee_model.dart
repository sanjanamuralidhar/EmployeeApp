// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Employee> welcomeFromJson(String str) => List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
    Employee({
        this.id,
        this.name,
        this.username,
        this.email,
        this.profile_image,
        // this.address,
        this.phone,
        this.website,
        // this.company,
    });

    int id;
    String name;
    String username;
    String email;
    String profile_image;
    // Address address;
    String phone;
    String website;
    // Company company;

    factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        profile_image: json["profile_image"],
        // address: Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        // company: json["company"] == null ? null : Company.fromJson(json["company"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "profile_image": profile_image,
        // "address": address.toJson(),
        "phone": phone,
        "website": website,
        // "company": company == null ? null : company.toJson(),
    };
}

// class Address {
//     Address({
//         this.street,
//         this.suite,
//         this.city,
//         this.zipcode,
//         this.geo,
//     });

//     String street;
//     String suite;
//     String city;
//     String zipcode;
//     Geo geo;

//     factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"],
//         suite: json["suite"],
//         city: json["city"],
//         zipcode: json["zipcode"],
//         geo: Geo.fromJson(json["geo"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//         "geo": geo.toJson(),
//     };
// }

// class Geo {
//     Geo({
//         this.lat,
//         this.lng,
//     });

//     String lat;
//     String lng;

//     factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"],
//         lng: json["lng"],
//     );

//     Map<String, dynamic> toJson() => {
//         "lat": lat,
//         "lng": lng,
//     };
// }

// class Company {
//     Company({
//         this.name,
//         this.catchPhrase,
//         this.bs,
//     });

//     String name;
//     String catchPhrase;
//     String bs;

//     factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"],
//         catchPhrase: json["catchPhrase"],
//         bs: json["bs"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "catchPhrase": catchPhrase,
//         "bs": bs,
//     };
// }
