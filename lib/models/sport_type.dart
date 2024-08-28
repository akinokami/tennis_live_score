class SportType {
  String? name;
  int? id;
  int? type;
  String? imgCat;
  int? imgVer;
  String? param;

  SportType(
      {this.name, this.id, this.type, this.imgCat, this.imgVer, this.param});

  SportType.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    id = json['Id'];
    type = json['Type'];
    imgCat = json['ImgCat'];
    imgVer = json['ImgVer'];
    param = json['Param'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Id'] = id;
    data['Type'] = type;
    data['ImgCat'] = imgCat;
    data['ImgVer'] = imgVer;
    data['Param'] = param;
    return data;
  }
}
