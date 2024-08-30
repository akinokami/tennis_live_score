class Stats {
  int? lastUpdateID;
  int? gameID;
  List<StatisticsFilters>? statisticsFilters;
  List<Statistics>? statistics;
  int? tTL;
  String? cacheTTL;

  Stats(
      {this.lastUpdateID,
      this.gameID,
      this.statisticsFilters,
      this.statistics,
      this.tTL,
      this.cacheTTL});

  Stats.fromJson(Map<String, dynamic> json) {
    lastUpdateID = json['LastUpdateID'];
    gameID = json['GameID'];
    if (json['StatisticsFilters'] != null) {
      statisticsFilters = <StatisticsFilters>[];
      json['StatisticsFilters'].forEach((v) {
        statisticsFilters!.add(StatisticsFilters.fromJson(v));
      });
    }
    if (json['Statistics'] != null) {
      statistics = <Statistics>[];
      json['Statistics'].forEach((v) {
        statistics!.add(Statistics.fromJson(v));
      });
    }
    tTL = json['TTL'];
    cacheTTL = json['CacheTTL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['LastUpdateID'] = lastUpdateID;
    data['GameID'] = gameID;
    if (statisticsFilters != null) {
      data['StatisticsFilters'] =
          statisticsFilters!.map((v) => v.toJson()).toList();
    }
    if (statistics != null) {
      data['Statistics'] = statistics!.map((v) => v.toJson()).toList();
    }
    data['TTL'] = tTL;
    data['CacheTTL'] = cacheTTL;
    return data;
  }
}

class StatisticsFilters {
  int? iD;
  String? name;
  bool? selected;
  String? path;

  StatisticsFilters({this.iD, this.name, this.selected, this.path});

  StatisticsFilters.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    selected = json['Selected'];
    path = json['Path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['Selected'] = selected;
    data['Path'] = path;
    return data;
  }
}

class Statistics {
  int? filterId;
  List<StatisticsOne>? statistics;

  Statistics({this.filterId, this.statistics});

  Statistics.fromJson(Map<String, dynamic> json) {
    filterId = json['FilterId'];
    if (json['Statistics'] != null) {
      statistics = <StatisticsOne>[];
      json['Statistics'].forEach((v) {
        statistics!.add(StatisticsOne.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['FilterId'] = filterId;
    if (statistics != null) {
      data['Statistics'] = statistics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StatisticsOne {
  int? type;
  List<String>? vals;
  List<int>? valsPct;

  StatisticsOne({this.type, this.vals, this.valsPct});

  StatisticsOne.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    vals = json['Vals'] != null ? json['Vals'].cast<String>() : [];
    valsPct = json['ValsPct'] != null ? json['ValsPct'].cast<int>() : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Type'] = type;
    data['Vals'] = vals;
    data['ValsPct'] = valsPct;
    return data;
  }
}
