// ignore_for_file: non_constant_identifier_names

import 'hex_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'theme.g.dart';

@JsonSerializable(nullable: false)
class BitmioTheme {
  static BitmioTheme shared;

  static setup() async {
    final data =
        await rootBundle.loadString('packages/kollab_theme/assets/theme.json');
    shared = BitmioTheme.fromJson(json.decode(data));
  }

  final String id;
  final String domain;
  final String primary_color;
  final OnboardingTheme onboarding;
  final WelcomeTheme welcome;
  final LoginTheme login;
  final SignupTheme signup;
  final ContactsTheme contacts;
  final DocumentsTheme documents;

  Color get primary_color_obj {
    return HexColor(primary_color);
  }

  BitmioTheme(
      {this.id,
      this.domain,
      this.primary_color,
      this.onboarding,
      this.welcome,
      this.login,
      this.signup,
      this.contacts,
      this.documents});

  factory BitmioTheme.fromJson(Map<String, dynamic> json) =>
      _$BitmioThemeFromJson(json);
  Map<String, dynamic> toJson() => _$BitmioThemeToJson(this);
}

@JsonSerializable(nullable: false)
class OnboardingTheme {
  String continue_label;
  String skip_label;
  String start_label;
  List<OnboardingItemTheme> items;

  OnboardingTheme(
      {this.continue_label, this.skip_label, this.start_label, this.items});

  factory OnboardingTheme.fromJson(Map<String, dynamic> json) =>
      _$OnboardingThemeFromJson(json);
  Map<String, dynamic> toJson() => _$OnboardingThemeToJson(this);
}

@JsonSerializable(nullable: false)
class OnboardingItemTheme {
  String title;
  String subtitle;

  OnboardingItemTheme({this.title, this.subtitle});

  factory OnboardingItemTheme.fromJson(Map<String, dynamic> json) =>
      _$OnboardingItemThemeFromJson(json);
  Map<String, dynamic> toJson() => _$OnboardingItemThemeToJson(this);
}

@JsonSerializable(nullable: false)
class WelcomeTheme {
  String hero_title;
  String login_button_title;
  String signup_button_title;
  String discover_button_title;

  WelcomeTheme(
      {this.hero_title,
      this.login_button_title,
      this.signup_button_title,
      this.discover_button_title});

  factory WelcomeTheme.fromJson(Map<String, dynamic> json) =>
      _$WelcomeThemeFromJson(json);
  Map<String, dynamic> toJson() => _$WelcomeThemeToJson(this);
}

@JsonSerializable(nullable: false)
class LoginTheme {
  String login_button_title;
  String forgot_login_button_title;

  LoginTheme({this.login_button_title, this.forgot_login_button_title});

  factory LoginTheme.fromJson(Map<String, dynamic> json) =>
      _$LoginThemeFromJson(json);
  Map<String, dynamic> toJson() => _$LoginThemeToJson(this);
}

@JsonSerializable(nullable: false)
class SignupTheme {
  String signup_button_title;
  String privacy_link_title;
  String privacy_link;

  SignupTheme(
      {this.signup_button_title, this.privacy_link_title, this.privacy_link});

  factory SignupTheme.fromJson(Map<String, dynamic> json) =>
      _$SignupThemeFromJson(json);
  Map<String, dynamic> toJson() => _$SignupThemeToJson(this);
}

@JsonSerializable(nullable: false)
class ContactsTheme {
  String title;

  ContactsTheme({this.title});

  factory ContactsTheme.fromJson(Map<String, dynamic> json) =>
      _$ContactsThemeFromJson(json);
  Map<String, dynamic> toJson() => _$ContactsThemeToJson(this);
}

@JsonSerializable(nullable: false)
class DocumentsTheme {
  String title;

  DocumentsTheme({this.title});

  factory DocumentsTheme.fromJson(Map<String, dynamic> json) =>
      _$DocumentsThemeFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentsThemeToJson(this);
}
