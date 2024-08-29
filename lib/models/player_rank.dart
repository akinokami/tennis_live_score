class PlayerRank {
  bool? isTableIncludeEvenCol;
  int? competition;
  int? season;
  int? stage;
  List<TableRanks>? tableRows;
  List<Columns>? columns;
  int? tableType;
  int? groupCategory;
  bool? showGrouped;

  PlayerRank(
      {this.isTableIncludeEvenCol,
      this.competition,
      this.season,
      this.stage,
      this.tableRows,
      this.columns,
      this.tableType,
      this.groupCategory,
      this.showGrouped});

  PlayerRank.fromJson(Map<String, dynamic> json) {
    isTableIncludeEvenCol = json['IsTableIncludeEvenCol'];
    competition = json['Competition'];
    season = json['Season'];
    stage = json['Stage'];
    if (json['TableRows'] != null) {
      tableRows = <TableRanks>[];
      json['TableRows'].forEach((v) {
        tableRows!.add(TableRanks.fromJson(v));
      });
    }
    if (json['Columns'] != null) {
      columns = <Columns>[];
      json['Columns'].forEach((v) {
        columns!.add(Columns.fromJson(v));
      });
    }
    tableType = json['TableType'];
    groupCategory = json['GroupCategory'];
    showGrouped = json['ShowGrouped'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IsTableIncludeEvenCol'] = isTableIncludeEvenCol;
    data['Competition'] = competition;
    data['Season'] = season;
    data['Stage'] = stage;
    if (tableRows != null) {
      data['TableRows'] = tableRows!.map((v) => v.toJson()).toList();
    }
    if (columns != null) {
      data['Columns'] = columns!.map((v) => v.toJson()).toList();
    }
    data['TableType'] = tableType;
    data['GroupCategory'] = groupCategory;
    data['ShowGrouped'] = showGrouped;
    return data;
  }
}

class TableRanks {
  Competitor? competitor;
  int? position;
  int? gamePlayed;
  int? gamesWon;
  int? gamesLost;
  int? gamesEven;
  int? fr;
  int? against;
  double? ratio;
  double? points;
  int? strike;
  double? ppg;
  double? oppg;
  int? gamesOT;
  int? gamesWonOnOT;
  int? gamesWonOnPen;
  int? gamesLossOnOT;
  int? gamesLossOnPen;
  String? pct;
  int? trend;

  TableRanks(
      {this.competitor,
      this.position,
      this.gamePlayed,
      this.gamesWon,
      this.gamesLost,
      this.gamesEven,
      this.fr,
      this.against,
      this.ratio,
      this.points,
      this.strike,
      this.ppg,
      this.oppg,
      this.gamesOT,
      this.gamesWonOnOT,
      this.gamesWonOnPen,
      this.gamesLossOnOT,
      this.gamesLossOnPen,
      this.pct,
      this.trend});

  TableRanks.fromJson(Map<String, dynamic> json) {
    competitor = json['Competitor'] != null
        ? Competitor.fromJson(json['Competitor'])
        : null;
    position = json['Position'];
    gamePlayed = json['GamePlayed'];
    gamesWon = json['GamesWon'];
    gamesLost = json['GamesLost'];
    gamesEven = json['GamesEven'];
    fr = json['For'];
    against = json['Against'];
    ratio = json['Ratio'];
    points = json['Points'];
    strike = json['Strike'];
    ppg = json['Ppg'];
    oppg = json['Oppg'];
    gamesOT = json['GamesOT'];
    gamesWonOnOT = json['GamesWonOnOT'];
    gamesWonOnPen = json['GamesWonOnPen'];
    gamesLossOnOT = json['GamesLossOnOT'];
    gamesLossOnPen = json['GamesLossOnPen'];
    pct = json['Pct'];
    trend = json['Trend'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (competitor != null) {
      data['Competitor'] = competitor!.toJson();
    }
    data['Position'] = position;
    data['GamePlayed'] = gamePlayed;
    data['GamesWon'] = gamesWon;
    data['GamesLost'] = gamesLost;
    data['GamesEven'] = gamesEven;
    data['For'] = fr;
    data['Against'] = against;
    data['Ratio'] = ratio;
    data['Points'] = points;
    data['Strike'] = strike;
    data['Ppg'] = ppg;
    data['Oppg'] = oppg;
    data['GamesOT'] = gamesOT;
    data['GamesWonOnOT'] = gamesWonOnOT;
    data['GamesWonOnPen'] = gamesWonOnPen;
    data['GamesLossOnOT'] = gamesLossOnOT;
    data['GamesLossOnPen'] = gamesLossOnPen;
    data['Pct'] = pct;
    data['Trend'] = trend;
    return data;
  }
}

class Competitor {
  int? iD;
  String? name;
  String? symbolicName;
  String? nameForURL;
  int? cID;
  int? sID;
  String? color;
  String? textColor;
  int? mainComp;
  bool? competitionHasTexture;
  // List<Null>? trend;
  int? type;
  int? popularityRank;
  List<Rankings>? rankings;
  int? imgVer;
  String? sName;
  MainCompetition? mainCompetition;
  String? titleName;

  Competitor(
      {this.iD,
      this.name,
      this.symbolicName,
      this.nameForURL,
      this.cID,
      this.sID,
      this.color,
      this.textColor,
      this.mainComp,
      this.competitionHasTexture,
      // this.trend,
      this.type,
      this.popularityRank,
      this.rankings,
      this.imgVer,
      this.sName,
      this.mainCompetition,
      this.titleName});

  Competitor.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    symbolicName = json['SymbolicName'];
    nameForURL = json['NameForURL'];
    cID = json['CID'];
    sID = json['SID'];
    color = json['Color'];
    textColor = json['TextColor'];
    mainComp = json['MainComp'];
    competitionHasTexture = json['CompetitionHasTexture'];
    // if (json['Trend'] != null) {
    //   trend = <Null>[];
    //   json['Trend'].forEach((v) {
    //     trend!.add(Null.fromJson(v));
    //   });
    // }
    type = json['Type'];
    popularityRank = json['PopularityRank'];
    if (json['Rankings'] != null) {
      rankings = <Rankings>[];
      json['Rankings'].forEach((v) {
        rankings!.add(Rankings.fromJson(v));
      });
    }
    imgVer = json['ImgVer'];
    sName = json['SName'];
    mainCompetition = json['MainCompetition'] != null
        ? MainCompetition.fromJson(json['MainCompetition'])
        : null;
    titleName = json['TitleName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['SymbolicName'] = symbolicName;
    data['NameForURL'] = nameForURL;
    data['CID'] = cID;
    data['SID'] = sID;
    data['Color'] = color;
    data['TextColor'] = textColor;
    data['MainComp'] = mainComp;
    data['CompetitionHasTexture'] = competitionHasTexture;
    // if (trend != null) {
    //   data['Trend'] = trend!.map((v) => v.toJson()).toList();
    // }
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    if (rankings != null) {
      data['Rankings'] = rankings!.map((v) => v.toJson()).toList();
    }
    data['ImgVer'] = imgVer;
    data['SName'] = sName;
    if (mainCompetition != null) {
      data['MainCompetition'] = mainCompetition!.toJson();
    }
    data['TitleName'] = titleName;
    return data;
  }
}

class Rankings {
  String? name;
  int? position;

  Rankings({this.name, this.position});

  Rankings.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    position = json['Position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Position'] = position;
    return data;
  }
}

class MainCompetition {
  String? name;
  String? nameForURL;
  int? iD;
  int? cID;
  int? sID;
  int? orderLevel;
  int? currSeason;
  String? currSeasonName;
  String? currSeasonStart;
  String? currSeasonEnd;
  int? currStage;
  bool? halfExpanded;
  int? gender;
  bool? hasLogo;
  bool? hasTexture;
  String? textColor;
  int? imgVer;
  int? competitorsType;
  int? popularityRank;
  String? sName;
  int? subSportType;
  int? fatherCompetition;

  MainCompetition(
      {this.name,
      this.nameForURL,
      this.iD,
      this.cID,
      this.sID,
      this.orderLevel,
      this.currSeason,
      this.currSeasonName,
      this.currSeasonStart,
      this.currSeasonEnd,
      this.currStage,
      this.halfExpanded,
      this.gender,
      this.hasLogo,
      this.hasTexture,
      this.textColor,
      this.imgVer,
      this.competitorsType,
      this.popularityRank,
      this.sName,
      this.subSportType,
      this.fatherCompetition});

  MainCompetition.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    nameForURL = json['NameForURL'];
    iD = json['ID'];
    cID = json['CID'];
    sID = json['SID'];
    orderLevel = json['OrderLevel'];
    currSeason = json['CurrSeason'];
    currSeasonName = json['CurrSeasonName'];
    currSeasonStart = json['CurrSeasonStart'];
    currSeasonEnd = json['CurrSeasonEnd'];
    currStage = json['CurrStage'];
    halfExpanded = json['HalfExpanded'];
    gender = json['Gender'];
    hasLogo = json['HasLogo'];
    hasTexture = json['HasTexture'];
    textColor = json['TextColor'];
    imgVer = json['ImgVer'];
    competitorsType = json['CompetitorsType'];
    popularityRank = json['PopularityRank'];
    sName = json['SName'];
    subSportType = json['SubSportType'];
    fatherCompetition = json['FatherCompetition'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['NameForURL'] = nameForURL;
    data['ID'] = iD;
    data['CID'] = cID;
    data['SID'] = sID;
    data['OrderLevel'] = orderLevel;
    data['CurrSeason'] = currSeason;
    data['CurrSeasonName'] = currSeasonName;
    data['CurrSeasonStart'] = currSeasonStart;
    data['CurrSeasonEnd'] = currSeasonEnd;
    data['CurrStage'] = currStage;
    data['HalfExpanded'] = halfExpanded;
    data['Gender'] = gender;
    data['HasLogo'] = hasLogo;
    data['HasTexture'] = hasTexture;
    data['TextColor'] = textColor;
    data['ImgVer'] = imgVer;
    data['CompetitorsType'] = competitorsType;
    data['PopularityRank'] = popularityRank;
    data['SName'] = sName;
    data['SubSportType'] = subSportType;
    data['FatherCompetition'] = fatherCompetition;
    return data;
  }
}

class Columns {
  String? memberName;
  String? displayName;
  bool? onlyExpanded;

  Columns({this.memberName, this.displayName, this.onlyExpanded});

  Columns.fromJson(Map<String, dynamic> json) {
    memberName = json['MemberName'];
    displayName = json['DisplayName'];
    onlyExpanded = json['OnlyExpanded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MemberName'] = memberName;
    data['DisplayName'] = displayName;
    data['OnlyExpanded'] = onlyExpanded;
    return data;
  }
}
