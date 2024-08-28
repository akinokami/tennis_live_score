class Scores {
  List<Countries>? countries;
  List<Games>? games;
  List<Competitions>? competitions;

  Scores({this.countries, this.games, this.competitions});

  Scores.fromJson(Map<String, dynamic> json) {
    if (json['Countries'] != null) {
      countries = <Countries>[];
      json['Countries'].forEach((v) {
        countries!.add(Countries.fromJson(v));
      });
    }
    if (json['Games'] != null) {
      games = <Games>[];
      json['Games'].forEach((v) {
        games!.add(Games.fromJson(v));
      });
    }
    if (json['Competitions'] != null) {
      competitions = <Competitions>[];
      json['Competitions'].forEach((v) {
        competitions!.add(Competitions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countries != null) {
      data['Countries'] = countries!.map((v) => v.toJson()).toList();
    }
    if (games != null) {
      data['Games'] = games!.map((v) => v.toJson()).toList();
    }
    if (competitions != null) {
      data['Competitions'] = competitions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Countries {
  String? name;
  String? nameForURL;
  int? iD;
  int? defaultLang;
  int? gamesCount;
  int? liveCount;
  int? defaultLanguage;
  String? color;
  String? color2;
  int? imgVer;

  Countries(
      {this.name,
      this.nameForURL,
      this.iD,
      this.defaultLang,
      this.gamesCount,
      this.liveCount,
      this.defaultLanguage,
      this.color,
      this.color2,
      this.imgVer});

  Countries.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    nameForURL = json['NameForURL'];
    iD = json['ID'];
    defaultLang = json['DefaultLang'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
    defaultLanguage = json['DefaultLanguage'];
    color = json['Color'];
    color2 = json['Color2'];
    imgVer = json['ImgVer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['NameForURL'] = nameForURL;
    data['ID'] = iD;
    data['DefaultLang'] = defaultLang;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    data['DefaultLanguage'] = defaultLanguage;
    data['Color'] = color;
    data['Color2'] = color2;
    data['ImgVer'] = imgVer;
    return data;
  }
}

class Games {
  int? sID;
  int? iD;
  int? comp;
  int? season;
  int? stage;
  bool? active;
  int? sTID;
  int? statusSequence;
  double? gT;
  double? preciseGT;
  bool? autoProgressGT;
  double? completion;
  double? regularTimeCompletion;
  String? gTD;
  String? sTime;
  String? eTime;
  int? showInGameCountdown;
  List<Comps>? comps;
  List<int>? scrs;
  int? round;
  bool? onTV;
  bool? hasBets;
  bool? hasPlayerBets;
  int? winner;
  bool? hasTrends;
  bool? topTrendsAvailable;
  bool? hasStatistics;
  bool? hasLineups;
  bool? hasDoubtful;
  bool? hasFieldPositions;
  bool? hasTopPerformers;
  bool? hasMissingPlayers;
  bool? hasPlayByPlay;
  bool? showPlayByPlay;
  bool? hasNews;
  bool? hasBuzz;
  bool? showTracker;
  bool? hasTable;
  List<String>? widgetsProviders;
  int? homeAwayTeamOrder;
  bool? hasChartEvents;
  String? roundName;
  String? gameSummaryPopUpUrl;
  String? chatUrl;
  String? webUrl;

  Games(
      {this.sID,
      this.iD,
      this.comp,
      this.season,
      this.stage,
      this.active,
      this.sTID,
      this.statusSequence,
      this.gT,
      this.preciseGT,
      this.autoProgressGT,
      this.completion,
      this.regularTimeCompletion,
      this.gTD,
      this.sTime,
      this.eTime,
      this.showInGameCountdown,
      this.comps,
      this.scrs,
      this.round,
      this.onTV,
      this.hasBets,
      this.hasPlayerBets,
      this.winner,
      this.hasTrends,
      this.topTrendsAvailable,
      this.hasStatistics,
      this.hasLineups,
      this.hasDoubtful,
      this.hasFieldPositions,
      this.hasTopPerformers,
      this.hasMissingPlayers,
      this.hasPlayByPlay,
      this.showPlayByPlay,
      this.hasNews,
      this.hasBuzz,
      this.showTracker,
      this.hasTable,
      this.widgetsProviders,
      this.homeAwayTeamOrder,
      this.hasChartEvents,
      this.roundName,
      this.gameSummaryPopUpUrl,
      this.chatUrl,
      this.webUrl});

  Games.fromJson(Map<String, dynamic> json) {
    sID = json['SID'];
    iD = json['ID'];
    comp = json['Comp'];
    season = json['Season'];
    stage = json['Stage'];
    active = json['Active'];
    sTID = json['STID'];
    statusSequence = json['StatusSequence'];
    gT = json['GT'];
    preciseGT = json['PreciseGT'];
    autoProgressGT = json['AutoProgressGT'];
    completion = json['Completion'];
    regularTimeCompletion = json['RegularTimeCompletion'];
    gTD = json['GTD'];
    sTime = json['STime'];
    eTime = json['ETime'];
    showInGameCountdown = json['ShowInGameCountdown'];
    if (json['Comps'] != null) {
      comps = <Comps>[];
      json['Comps'].forEach((v) {
        comps!.add(Comps.fromJson(v));
      });
    }
    scrs = json['Scrs'].cast<int>();
    round = json['Round'];
    onTV = json['OnTV'];
    hasBets = json['HasBets'];
    hasPlayerBets = json['HasPlayerBets'];
    winner = json['Winner'];
    hasTrends = json['HasTrends'];
    topTrendsAvailable = json['TopTrendsAvailable'];
    hasStatistics = json['HasStatistics'];
    hasLineups = json['HasLineups'];
    hasDoubtful = json['HasDoubtful'];
    hasFieldPositions = json['HasFieldPositions'];
    hasTopPerformers = json['HasTopPerformers'];
    hasMissingPlayers = json['HasMissingPlayers'];
    hasPlayByPlay = json['HasPlayByPlay'];
    showPlayByPlay = json['ShowPlayByPlay'];
    hasNews = json['HasNews'];
    hasBuzz = json['HasBuzz'];
    showTracker = json['ShowTracker'];
    hasTable = json['HasTable'];
    if (json['WidgetsProviders'] != null) {
      widgetsProviders = json['WidgetsProviders'].cast<String>();
    }
    homeAwayTeamOrder = json['HomeAwayTeamOrder'];
    hasChartEvents = json['HasChartEvents'];
    roundName = json['RoundName'];
    gameSummaryPopUpUrl = json['GameSummaryPopUpUrl'];
    chatUrl = json['ChatUrl'];
    webUrl = json['WebUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SID'] = sID;
    data['ID'] = iD;
    data['Comp'] = comp;
    data['Season'] = season;
    data['Stage'] = stage;
    data['Active'] = active;
    data['STID'] = sTID;
    data['StatusSequence'] = statusSequence;
    data['GT'] = gT;
    data['PreciseGT'] = preciseGT;
    data['AutoProgressGT'] = autoProgressGT;
    data['Completion'] = completion;
    data['RegularTimeCompletion'] = regularTimeCompletion;
    data['GTD'] = gTD;
    data['STime'] = sTime;
    data['ETime'] = eTime;
    data['ShowInGameCountdown'] = showInGameCountdown;
    if (comps != null) {
      data['Comps'] = comps!.map((v) => v.toJson()).toList();
    }
    data['Scrs'] = scrs;
    data['Round'] = round;
    data['OnTV'] = onTV;
    data['HasBets'] = hasBets;
    data['HasPlayerBets'] = hasPlayerBets;
    data['Winner'] = winner;
    data['HasTrends'] = hasTrends;
    data['TopTrendsAvailable'] = topTrendsAvailable;
    data['HasStatistics'] = hasStatistics;
    data['HasLineups'] = hasLineups;
    data['HasDoubtful'] = hasDoubtful;
    data['HasFieldPositions'] = hasFieldPositions;
    data['HasTopPerformers'] = hasTopPerformers;
    data['HasMissingPlayers'] = hasMissingPlayers;
    data['HasPlayByPlay'] = hasPlayByPlay;
    data['ShowPlayByPlay'] = showPlayByPlay;
    data['HasNews'] = hasNews;
    data['HasBuzz'] = hasBuzz;
    data['ShowTracker'] = showTracker;
    data['HasTable'] = hasTable;
    data['WidgetsProviders'] = widgetsProviders;
    data['HomeAwayTeamOrder'] = homeAwayTeamOrder;
    data['HasChartEvents'] = hasChartEvents;
    data['RoundName'] = roundName;
    data['GameSummaryPopUpUrl'] = gameSummaryPopUpUrl;
    data['ChatUrl'] = chatUrl;
    data['WebUrl'] = webUrl;
    return data;
  }
}

class Comps {
  int? iD;
  String? name;
  String? symbolicName;
  String? titleName;
  String? nameForURL;
  int? cID;
  int? sID;
  String? color;
  String? color2;
  String? awayColor;
  String? awayColor2;
  String? textColor;
  int? mainComp;
  bool? competitionHasTexture;
  String? founded;
  bool? hasSquad;
  int? type;
  int? popularityRank;
  int? imgVer;
  String? chatUrl;

  Comps(
      {this.iD,
      this.name,
      this.symbolicName,
      this.titleName,
      this.nameForURL,
      this.cID,
      this.sID,
      this.color,
      this.color2,
      this.awayColor,
      this.awayColor2,
      this.textColor,
      this.mainComp,
      this.competitionHasTexture,
      this.founded,
      this.hasSquad,
      this.type,
      this.popularityRank,
      this.imgVer,
      this.chatUrl});

  Comps.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    symbolicName = json['SymbolicName'];
    titleName = json['TitleName'];
    nameForURL = json['NameForURL'];
    cID = json['CID'];
    sID = json['SID'];
    color = json['Color'];
    color2 = json['Color2'];
    awayColor = json['AwayColor'];
    awayColor2 = json['AwayColor2'];
    textColor = json['TextColor'];
    mainComp = json['MainComp'];
    competitionHasTexture = json['CompetitionHasTexture'];
    founded = json['Founded'];
    hasSquad = json['HasSquad'];
    type = json['Type'];
    popularityRank = json['PopularityRank'];
    imgVer = json['ImgVer'];
    chatUrl = json['ChatUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['SymbolicName'] = symbolicName;
    data['TitleName'] = titleName;
    data['NameForURL'] = nameForURL;
    data['CID'] = cID;
    data['SID'] = sID;
    data['Color'] = color;
    data['Color2'] = color2;
    data['AwayColor'] = awayColor;
    data['AwayColor2'] = awayColor2;
    data['TextColor'] = textColor;
    data['MainComp'] = mainComp;
    data['CompetitionHasTexture'] = competitionHasTexture;
    data['Founded'] = founded;
    data['HasSquad'] = hasSquad;
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    data['ImgVer'] = imgVer;
    data['ChatUrl'] = chatUrl;
    return data;
  }
}

class Competitions {
  String? name;
  String? sName;
  String? nameForURL;
  int? iD;
  int? cID;
  int? sID;
  bool? hasTbl;
  bool? hasLiveTable;
  int? orderLevel;
  List<Seasons>? seasons;
  int? currSeason;
  String? currSeasonName;
  String? currSeasonStart;
  String? currSeasonEnd;
  int? currStage;
  bool? hasSquads;
  bool? showTopAthletes;
  bool? autoProgressAddedTime;
  bool? supportMissingPlayers;
  int? gamesCount;
  int? playingCount;
  int? liveCount;
  int? justEndedCount;
  bool? expanded;
  bool? halfExpanded;
  int? gender;
  String? color;
  String? color2;
  bool? hasLogo;
  bool? hasTexture;
  String? textColor;
  int? imgVer;
  int? competitorsType;
  int? popularityRank;

  Competitions(
      {this.name,
      this.sName,
      this.nameForURL,
      this.iD,
      this.cID,
      this.sID,
      this.hasTbl,
      this.hasLiveTable,
      this.orderLevel,
      this.seasons,
      this.currSeason,
      this.currSeasonName,
      this.currSeasonStart,
      this.currSeasonEnd,
      this.currStage,
      this.hasSquads,
      this.showTopAthletes,
      this.autoProgressAddedTime,
      this.supportMissingPlayers,
      this.gamesCount,
      this.playingCount,
      this.liveCount,
      this.justEndedCount,
      this.expanded,
      this.halfExpanded,
      this.gender,
      this.color,
      this.color2,
      this.hasLogo,
      this.hasTexture,
      this.textColor,
      this.imgVer,
      this.competitorsType,
      this.popularityRank});

  Competitions.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    sName = json['SName'];
    nameForURL = json['NameForURL'];
    iD = json['ID'];
    cID = json['CID'];
    sID = json['SID'];
    hasTbl = json['HasTbl'];
    hasLiveTable = json['HasLiveTable'];
    orderLevel = json['OrderLevel'];
    if (json['Seasons'] != null) {
      seasons = <Seasons>[];
      json['Seasons'].forEach((v) {
        seasons!.add(Seasons.fromJson(v));
      });
    }
    currSeason = json['CurrSeason'];
    currSeasonName = json['CurrSeasonName'];
    currSeasonStart = json['CurrSeasonStart'];
    currSeasonEnd = json['CurrSeasonEnd'];
    currStage = json['CurrStage'];
    hasSquads = json['HasSquads'];
    showTopAthletes = json['ShowTopAthletes'];
    autoProgressAddedTime = json['AutoProgressAddedTime'];
    supportMissingPlayers = json['SupportMissingPlayers'];
    gamesCount = json['GamesCount'];
    playingCount = json['PlayingCount'];
    liveCount = json['LiveCount'];
    justEndedCount = json['JustEndedCount'];
    expanded = json['Expanded'];
    halfExpanded = json['HalfExpanded'];
    gender = json['Gender'];
    color = json['Color'];
    color2 = json['Color2'];
    hasLogo = json['HasLogo'];
    hasTexture = json['HasTexture'];
    textColor = json['TextColor'];
    imgVer = json['ImgVer'];
    competitorsType = json['CompetitorsType'];
    popularityRank = json['PopularityRank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['SName'] = sName;
    data['NameForURL'] = nameForURL;
    data['ID'] = iD;
    data['CID'] = cID;
    data['SID'] = sID;
    data['HasTbl'] = hasTbl;
    data['HasLiveTable'] = hasLiveTable;
    data['OrderLevel'] = orderLevel;
    if (seasons != null) {
      data['Seasons'] = seasons!.map((v) => v.toJson()).toList();
    }
    data['CurrSeason'] = currSeason;
    data['CurrSeasonName'] = currSeasonName;
    data['CurrSeasonStart'] = currSeasonStart;
    data['CurrSeasonEnd'] = currSeasonEnd;
    data['CurrStage'] = currStage;
    data['HasSquads'] = hasSquads;
    data['ShowTopAthletes'] = showTopAthletes;
    data['AutoProgressAddedTime'] = autoProgressAddedTime;
    data['SupportMissingPlayers'] = supportMissingPlayers;
    data['GamesCount'] = gamesCount;
    data['PlayingCount'] = playingCount;
    data['LiveCount'] = liveCount;
    data['JustEndedCount'] = justEndedCount;
    data['Expanded'] = expanded;
    data['HalfExpanded'] = halfExpanded;
    data['Gender'] = gender;
    data['Color'] = color;
    data['Color2'] = color2;
    data['HasLogo'] = hasLogo;
    data['HasTexture'] = hasTexture;
    data['TextColor'] = textColor;
    data['ImgVer'] = imgVer;
    data['CompetitorsType'] = competitorsType;
    data['PopularityRank'] = popularityRank;
    return data;
  }
}

class Seasons {
  int? num;
  String? sName;
  bool? useName;
  bool? hasTbl;
  List<Stages>? stages;
  String? start;
  String? end;

  Seasons(
      {this.num,
      this.sName,
      this.useName,
      this.hasTbl,
      this.stages,
      this.start,
      this.end});

  Seasons.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    sName = json['SName'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    if (json['Stages'] != null) {
      stages = <Stages>[];
      json['Stages'].forEach((v) {
        stages!.add(Stages.fromJson(v));
      });
    }
    start = json['Start'];
    end = json['End'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['SName'] = sName;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    if (stages != null) {
      data['Stages'] = stages!.map((v) => v.toJson()).toList();
    }
    data['Start'] = start;
    data['End'] = end;
    return data;
  }
}

class Stages {
  int? num;
  String? name;
  bool? useName;
  bool? hasTbl;
  bool? isFinal;
  int? gamesCount;
  int? liveCount;
  int? stageType;
  bool? filterDivision;

  Stages(
      {this.num,
      this.name,
      this.useName,
      this.hasTbl,
      this.isFinal,
      this.gamesCount,
      this.liveCount,
      this.stageType,
      this.filterDivision});

  Stages.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    name = json['Name'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    isFinal = json['IsFinal'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
    stageType = json['StageType'];
    filterDivision = json['FilterDivision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    data['IsFinal'] = isFinal;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    data['StageType'] = stageType;
    data['FilterDivision'] = filterDivision;
    return data;
  }
}
