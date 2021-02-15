// class CoronaBoardCast {
//   String _language;
//   String _title;
//   String _source;
//
//   String get language => _language;
//
//   set language(String value) {
//     _language = value;
//   }
//
//   String _image;
//   String _summary;
//
//   String get title => _title;
//
//   set title(String value) {
//     _title = value;
//   }
//
//   String get source => _source;
//
//   set source(String value) {
//     _source = value;
//   }
//
//   String get image => _image;
//
//   set image(String value) {
//     _image = value;
//   }
//
//   String get summary => _summary;
//
//   set summary(String value) {
//     _summary = value;
//   }
// }

class CoronaBoardCast {
  List<Data> data;
  int total;
  int limit;
  int start;
  int page;

  CoronaBoardCast({this.data, this.total, this.limit, this.start, this.page});

  CoronaBoardCast.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      // ignore: deprecated_member_use
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    total = json['total'];
    limit = json['limit'];
    start = json['start'];
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['limit'] = this.limit;
    data['start'] = this.start;
    data['page'] = this.page;
    return data;
  }
}

class Data {
  String sId;
  String lang;
  String title;
  String source;
  String audioUrl;
  String imageUrl;
  String summary;
  String createdAt;
  String updatedAt;
  int iV;
  bool isFeatured;

  Data(
      {this.sId,
      this.lang,
      this.title,
      this.source,
      this.audioUrl,
      this.imageUrl,
      this.summary,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.isFeatured});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    lang = json['lang'];
    title = json['title'];
    source = json['source'];
    audioUrl = json['audio_url'];
    imageUrl = json['image_url'];
    summary = json['summary'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    iV = json['__v'];
    isFeatured = json['is_featured'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['lang'] = this.lang;
    data['title'] = this.title;
    data['source'] = this.source;
    data['audio_url'] = this.audioUrl;
    data['image_url'] = this.imageUrl;
    data['summary'] = this.summary;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['__v'] = this.iV;
    data['is_featured'] = this.isFeatured;
    return data;
  }
}
