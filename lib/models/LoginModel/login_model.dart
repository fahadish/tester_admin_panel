// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  });

  String? status;
  int? statusCode;
  Data? data;
  String? message;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"] == null ? null : json["status"],
    statusCode: json["status_code"] == null ? null : json["status_code"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "status_code": statusCode == null ? null : statusCode,
    "data": data == null ? null : data!.toJson(),
    "message": message == null ? null : message,
  };
}

class Data {
  Data({
    this.accessToken,
    this.userId,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.address,
    this.country,
    this.city,
    this.allowShope,
    this.allowPortfolio,
    this.allowVideo,
    this.allowOrders,
    this.allowGallery,
    this.allowClients,
    this.allowFaq,
    this.allowSections,
    this.allowReviews,
    this.registerCategory,
  });

  int? accessToken;
  int? userId;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? country;
  String? city;
  String? allowShope;
  String? allowPortfolio;
  String? allowVideo;
  String? allowOrders;
  String? allowGallery;
  String? allowClients;
  String? allowFaq;
  String? allowSections;
  String? allowReviews;
  int? registerCategory;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    accessToken: json["access_token"] == null ? null : json["access_token"],
    userId: json["user_id"] == null ? null : json["user_id"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    password: json["password"] == null ? null : json["password"],
    phone: json["phone"] == null ? null : json["phone"],
    address: json["address"] == null ? null : json["address"],
    country: json["country"] == null ? null : json["country"],
    city: json["city"] == null ? null : json["city"],
    allowShope: json["allow_shope"] == null ? null : json["allow_shope"],
    allowPortfolio: json["allow_portfolio"] == null ? null : json["allow_portfolio"],
    allowVideo: json["allow_video"] == null ? null : json["allow_video"],
    allowOrders: json["allow_orders"] == null ? null : json["allow_orders"],
    allowGallery: json["allow_gallery"] == null ? null : json["allow_gallery"],
    allowClients: json["allow_clients"] == null ? null : json["allow_clients"],
    allowFaq: json["allow_faq"] == null ? null : json["allow_faq"],
    allowSections: json["allow_sections"] == null ? null : json["allow_sections"],
    allowReviews: json["allow_reviews"] == null ? null : json["allow_reviews"],
    registerCategory: json["register_category"] == null ? null : json["register_category"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken == null ? null : accessToken,
    "user_id": userId == null ? null : userId,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "password": password == null ? null : password,
    "phone": phone == null ? null : phone,
    "address": address == null ? null : address,
    "country": country == null ? null : country,
    "city": city == null ? null : city,
    "allow_shope": allowShope == null ? null : allowShope,
    "allow_portfolio": allowPortfolio == null ? null : allowPortfolio,
    "allow_video": allowVideo == null ? null : allowVideo,
    "allow_orders": allowOrders == null ? null : allowOrders,
    "allow_gallery": allowGallery == null ? null : allowGallery,
    "allow_clients": allowClients == null ? null : allowClients,
    "allow_faq": allowFaq == null ? null : allowFaq,
    "allow_sections": allowSections == null ? null : allowSections,
    "allow_reviews": allowReviews == null ? null : allowReviews,
    "register_category": registerCategory == null ? null : registerCategory,
  };
}
