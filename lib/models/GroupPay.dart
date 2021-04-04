import 'dart:convert';

import 'dart:developer';

import '../enums.dart';

GroupPay groupPayFromJson(String str) => GroupPay.fromJson(json.decode(str));

String groupPayToJson(GroupPay data) => json.encode(data.toJson());

class GroupPay {
  GroupPay({
    this.userLogin,
    this.amount,
    this.sessionId,
    this.serviceType = 'QIWI',
  });

  String userLogin;
  double amount;
  String sessionId;
  String serviceType;

  factory GroupPay.fromJson(Map<String, dynamic> json) => GroupPay(
        userLogin: json["userLogin"],
        amount: json["amount"],
        sessionId: json["sessionId"],
        serviceType: json["serviceType"],
      );

  Map<String, dynamic> toJson() => {
        "userLogin": userLogin,
        "amount": amount,
        "sessionId": sessionId,
        "serviceType": serviceType,
      };
}
