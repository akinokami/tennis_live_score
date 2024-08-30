class PointByPoint {
  List<Sets>? sets;

  PointByPoint({this.sets});

  PointByPoint.fromJson(Map<String, dynamic> json) {
    if (json['Sets'] != null) {
      sets = <Sets>[];
      json['Sets'].forEach((v) {
        sets!.add(Sets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sets != null) {
      data['Sets'] = sets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sets {
  String? name;
  List<PointsByPointGames>? pointsByPointGames;

  Sets({this.name, this.pointsByPointGames});

  Sets.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    if (json['PointsByPointGames'] != null) {
      pointsByPointGames = <PointsByPointGames>[];
      json['PointsByPointGames'].forEach((v) {
        pointsByPointGames!.add(PointsByPointGames.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    if (pointsByPointGames != null) {
      data['PointsByPointGames'] =
          pointsByPointGames!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PointsByPointGames {
  List<int>? score;
  int? winner;
  int? servingPlayer;
  List<Points>? points;
  bool? hasBreak;

  PointsByPointGames(
      {this.score,
      this.winner,
      this.servingPlayer,
      this.points,
      this.hasBreak});

  PointsByPointGames.fromJson(Map<String, dynamic> json) {
    score = json['Score'] != null ? json['Score'].cast<int>() : [];
    winner = json['Winner'];
    servingPlayer = json['ServingPlayer'];
    if (json['Points'] != null) {
      points = <Points>[];
      json['Points'].forEach((v) {
        points!.add(Points.fromJson(v));
      });
    }
    hasBreak = json['HasBreak'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Score'] = score;
    data['Winner'] = winner;
    data['ServingPlayer'] = servingPlayer;
    if (points != null) {
      data['Points'] = points!.map((v) => v.toJson()).toList();
    }
    data['HasBreak'] = hasBreak;
    return data;
  }
}

class Points {
  List<int>? score;
  ImportantPoint? importantPoint;
  int? winner;
  int? pointNum;

  Points({this.score, this.importantPoint, this.winner, this.pointNum});

  Points.fromJson(Map<String, dynamic> json) {
    score = json['Score'] != null ? json['Score'].cast<int>() : [];
    importantPoint = json['ImportantPoint'] != null
        ? ImportantPoint.fromJson(json['ImportantPoint'])
        : null;
    winner = json['Winner'];
    pointNum = json['PointNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Score'] = score;
    if (importantPoint != null) {
      data['ImportantPoint'] = importantPoint!.toJson();
    }
    data['Winner'] = winner;
    data['PointNum'] = pointNum;
    return data;
  }
}

class ImportantPoint {
  int? type;
  int? competitor;

  ImportantPoint({this.type, this.competitor});

  ImportantPoint.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    competitor = json['Competitor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Type'] = type;
    data['Competitor'] = competitor;
    return data;
  }
}
