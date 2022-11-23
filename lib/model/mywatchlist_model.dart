// To parse this JSON data, do
//
//     final mywatchlistData = mywatchlistDataFromJson(jsonString);

import 'dart:convert';

List<MywatchlistData> mywatchlistDataFromJson(String str) => List<MywatchlistData>.from(json.decode(str).map((x) => MywatchlistData.fromJson(x)));

String mywatchlistDataToJson(List<MywatchlistData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MywatchlistData {
    MywatchlistData({
        required this.pk,
        required this.fields,
    });


    int pk;
    Fields fields;

    factory MywatchlistData.fromJson(Map<String, dynamic> json) => MywatchlistData(
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    String watched;
    String title;
    String rating;
    String releaseDate;
    String review;

    bool watchedBool() {
        if (watched == "Sudah"){
            return true;
        } else {
            return false;
        }
    }

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: json["watched"] ,
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
    );



    Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}
