class Scores {
  List<Countries>? countries;
  List<Games>? games;
  List<Competitions>? competitions;

  Scores({
    this.countries,
    this.games,
    this.competitions,
  });

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
  bool? notReal;
  int? gamesCount;
  int? liveCount;
  int? defaultLanguage;
  int? imgVer;
  bool? isInternational;
  String? color;
  String? color2;

  Countries(
      {this.name,
      this.nameForURL,
      this.iD,
      this.defaultLang,
      this.notReal,
      this.gamesCount,
      this.liveCount,
      this.defaultLanguage,
      this.imgVer,
      this.isInternational,
      this.color,
      this.color2});

  Countries.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    nameForURL = json['NameForURL'];
    iD = json['ID'];
    defaultLang = json['DefaultLang'];
    notReal = json['NotReal'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
    defaultLanguage = json['DefaultLanguage'];
    imgVer = json['ImgVer'];
    isInternational = json['IsInternational'];
    color = json['Color'];
    color2 = json['Color2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['NameForURL'] = nameForURL;
    data['ID'] = iD;
    data['DefaultLang'] = defaultLang;
    data['NotReal'] = notReal;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    data['DefaultLanguage'] = defaultLanguage;
    data['ImgVer'] = imgVer;
    data['IsInternational'] = isInternational;
    data['Color'] = color;
    data['Color2'] = color2;
    return data;
  }
}

class Games {
  int? surface;
  bool? hasPointByPoint;
  int? sID;
  int? iD;
  int? comp;
  int? season;
  int? stage;
  int? group;
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
  bool? showScoreboard;
  int? toQualify;
  bool? onTV;
  bool? hasBets;
  int? winner;
  bool? hasTrends;
  bool? topTrendsAvailable;
  bool? neutralVenue;
  bool? hasStatistics;
  bool? hasTopPerformers;
  bool? hasBuzz;
  bool? showTracker;
  bool? hasTable;
  List<StageTimes>? stageTimes;
  int? homeAwayTeamOrder;
  String? webUrl;
  List<ExtraScores>? extraScores;
  bool? hasNews;
  bool? notPlaying;
  int? servNum;
  int? possession;
  bool? hasBetsTeaser;
  bool? hasTVLinks;
  int? countdown;
  bool? showCountdown;

  Games(
      {this.surface,
      this.hasPointByPoint,
      this.sID,
      this.iD,
      this.comp,
      this.season,
      this.stage,
      this.group,
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
      this.showScoreboard,
      this.toQualify,
      this.onTV,
      this.hasBets,
      this.winner,
      this.hasTrends,
      this.topTrendsAvailable,
      this.neutralVenue,
      this.hasStatistics,
      this.hasTopPerformers,
      this.hasBuzz,
      this.showTracker,
      this.hasTable,
      this.stageTimes,
      this.homeAwayTeamOrder,
      this.webUrl,
      this.extraScores,
      this.hasNews,
      this.notPlaying,
      this.servNum,
      this.possession,
      this.hasBetsTeaser,
      this.hasTVLinks,
      this.countdown,
      this.showCountdown});

  Games.fromJson(Map<String, dynamic> json) {
    surface = json['Surface'];
    hasPointByPoint = json['HasPointByPoint'];
    sID = json['SID'];
    iD = json['ID'];
    comp = json['Comp'];
    season = json['Season'];
    stage = json['Stage'];
    group = json['Group'];
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
    showScoreboard = json['ShowScoreboard'];
    toQualify = json['ToQualify'];
    onTV = json['OnTV'];
    hasBets = json['HasBets'];
    winner = json['Winner'];
    hasTrends = json['HasTrends'];
    topTrendsAvailable = json['TopTrendsAvailable'];
    neutralVenue = json['NeutralVenue'];
    hasStatistics = json['HasStatistics'];
    hasTopPerformers = json['HasTopPerformers'];
    hasBuzz = json['HasBuzz'];
    showTracker = json['ShowTracker'];
    hasTable = json['HasTable'];
    if (json['StageTimes'] != null) {
      stageTimes = <StageTimes>[];
      json['StageTimes'].forEach((v) {
        stageTimes!.add(StageTimes.fromJson(v));
      });
    }
    homeAwayTeamOrder = json['HomeAwayTeamOrder'];
    webUrl = json['WebUrl'];
    if (json['ExtraScores'] != null) {
      extraScores = <ExtraScores>[];
      json['ExtraScores'].forEach((v) {
        extraScores!.add(ExtraScores.fromJson(v));
      });
    }
    hasNews = json['HasNews'];
    notPlaying = json['NotPlaying'];
    servNum = json['ServNum'];
    possession = json['Possession'];
    hasBetsTeaser = json['HasBetsTeaser'];
    hasTVLinks = json['HasTVLinks'];
    countdown = json['Countdown'];
    showCountdown = json['ShowCountdown'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Surface'] = surface;
    data['HasPointByPoint'] = hasPointByPoint;
    data['SID'] = sID;
    data['ID'] = iD;
    data['Comp'] = comp;
    data['Season'] = season;
    data['Stage'] = stage;
    data['Group'] = group;
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
    data['ShowScoreboard'] = showScoreboard;
    data['ToQualify'] = toQualify;
    data['OnTV'] = onTV;
    data['HasBets'] = hasBets;
    data['Winner'] = winner;
    data['HasTrends'] = hasTrends;
    data['TopTrendsAvailable'] = topTrendsAvailable;
    data['NeutralVenue'] = neutralVenue;
    data['HasStatistics'] = hasStatistics;
    data['HasTopPerformers'] = hasTopPerformers;
    data['HasBuzz'] = hasBuzz;
    data['ShowTracker'] = showTracker;
    data['HasTable'] = hasTable;
    if (stageTimes != null) {
      data['StageTimes'] = stageTimes!.map((v) => v.toJson()).toList();
    }
    data['HomeAwayTeamOrder'] = homeAwayTeamOrder;
    data['WebUrl'] = webUrl;
    if (extraScores != null) {
      data['ExtraScores'] = extraScores!.map((v) => v.toJson()).toList();
    }
    data['HasNews'] = hasNews;
    data['NotPlaying'] = notPlaying;
    data['ServNum'] = servNum;
    data['Possession'] = possession;
    data['HasBetsTeaser'] = hasBetsTeaser;
    data['HasTVLinks'] = hasTVLinks;
    data['Countdown'] = countdown;
    data['ShowCountdown'] = showCountdown;
    return data;
  }
}

class Comps {
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
  int? type;
  int? popularityRank;
  List<Rankings>? rankings;
  int? imgVer;
  String? sName;

  Comps(
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
      this.type,
      this.popularityRank,
      this.rankings,
      this.imgVer,
      this.sName});

  Comps.fromJson(Map<String, dynamic> json) {
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
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    if (rankings != null) {
      data['Rankings'] = rankings!.map((v) => v.toJson()).toList();
    }
    data['ImgVer'] = imgVer;
    data['SName'] = sName;
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

class StageTimes {
  int? stageID;
  double? minutes;
  String? time;

  StageTimes({this.stageID, this.minutes, this.time});

  StageTimes.fromJson(Map<String, dynamic> json) {
    stageID = json['StageID'];
    minutes = json['Minutes'];
    time = json['Time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StageID'] = stageID;
    data['Minutes'] = minutes;
    data['Time'] = time;
    return data;
  }
}

class ExtraScores {
  int? stageID;
  List<int>? scores;

  ExtraScores({this.stageID, this.scores});

  ExtraScores.fromJson(Map<String, dynamic> json) {
    stageID = json['StageID'];
    scores = json['Scores'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StageID'] = stageID;
    data['Scores'] = scores;
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
  int? orderLevel;
  List<Seasons>? seasons;
  int? currSeason;
  String? currSeasonName;
  String? currSeasonStart;
  String? currSeasonEnd;
  int? currStage;
  int? hostCity;
  int? subSportType;
  int? gamesCount;
  int? playingCount;
  int? liveCount;
  int? justEndedCount;
  bool? expanded;
  bool? halfExpanded;
  int? gender;
  int? fatherCompetition;
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
      this.orderLevel,
      this.seasons,
      this.currSeason,
      this.currSeasonName,
      this.currSeasonStart,
      this.currSeasonEnd,
      this.currStage,
      this.hostCity,
      this.subSportType,
      this.gamesCount,
      this.playingCount,
      this.liveCount,
      this.justEndedCount,
      this.expanded,
      this.halfExpanded,
      this.gender,
      this.fatherCompetition,
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
    hostCity = json['HostCity'];
    subSportType = json['SubSportType'];
    gamesCount = json['GamesCount'];
    playingCount = json['PlayingCount'];
    liveCount = json['LiveCount'];
    justEndedCount = json['JustEndedCount'];
    expanded = json['Expanded'];
    halfExpanded = json['HalfExpanded'];
    gender = json['Gender'];
    fatherCompetition = json['FatherCompetition'];
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
    data['OrderLevel'] = orderLevel;
    if (seasons != null) {
      data['Seasons'] = seasons!.map((v) => v.toJson()).toList();
    }
    data['CurrSeason'] = currSeason;
    data['CurrSeasonName'] = currSeasonName;
    data['CurrSeasonStart'] = currSeasonStart;
    data['CurrSeasonEnd'] = currSeasonEnd;
    data['CurrStage'] = currStage;
    data['HostCity'] = hostCity;
    data['SubSportType'] = subSportType;
    data['GamesCount'] = gamesCount;
    data['PlayingCount'] = playingCount;
    data['LiveCount'] = liveCount;
    data['JustEndedCount'] = justEndedCount;
    data['Expanded'] = expanded;
    data['HalfExpanded'] = halfExpanded;
    data['Gender'] = gender;
    data['FatherCompetition'] = fatherCompetition;
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
  int? nm;
  String? sName;
  bool? useName;
  bool? hasTbl;
  bool? hasBrackets;
  bool? hasSeed;
  List<Stages>? stages;
  String? knockoutTitle;
  String? start;
  String? end;

  Seasons(
      {this.nm,
      this.sName,
      this.useName,
      this.hasTbl,
      this.hasBrackets,
      this.hasSeed,
      this.stages,
      this.knockoutTitle,
      this.start,
      this.end});

  Seasons.fromJson(Map<String, dynamic> json) {
    nm = json['Num'];
    sName = json['SName'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    hasBrackets = json['HasBrackets'];
    hasSeed = json['HasSeed'];
    if (json['Stages'] != null) {
      stages = <Stages>[];
      json['Stages'].forEach((v) {
        stages!.add(Stages.fromJson(v));
      });
    }
    knockoutTitle = json['KnockoutTitle'];
    start = json['Start'];
    end = json['End'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = nm;
    data['SName'] = sName;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    data['HasBrackets'] = hasBrackets;
    data['HasSeed'] = hasSeed;
    if (stages != null) {
      data['Stages'] = stages!.map((v) => v.toJson()).toList();
    }
    data['KnockoutTitle'] = knockoutTitle;
    data['Start'] = start;
    data['End'] = end;
    return data;
  }
}

class Stages {
  int? nm;
  String? name;
  bool? useName;
  bool? hasTbl;
  bool? isFinal;
  int? stageType;
  bool? filterDivision;
  List<Groups>? groups;
  bool? connectedToNextStage;
  int? gamesCount;
  int? liveCount;

  Stages(
      {this.nm,
      this.name,
      this.useName,
      this.hasTbl,
      this.isFinal,
      this.stageType,
      this.filterDivision,
      this.groups,
      this.connectedToNextStage,
      this.gamesCount,
      this.liveCount});

  Stages.fromJson(Map<String, dynamic> json) {
    nm = json['Num'];
    name = json['Name'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    isFinal = json['IsFinal'];
    stageType = json['StageType'];
    filterDivision = json['FilterDivision'];
    if (json['Groups'] != null) {
      groups = <Groups>[];
      json['Groups'].forEach((v) {
        groups!.add(Groups.fromJson(v));
      });
    }
    connectedToNextStage = json['ConnectedToNextStage'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = nm;
    data['Name'] = name;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    data['IsFinal'] = isFinal;
    data['StageType'] = stageType;
    data['FilterDivision'] = filterDivision;
    if (groups != null) {
      data['Groups'] = groups!.map((v) => v.toJson()).toList();
    }
    data['ConnectedToNextStage'] = connectedToNextStage;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    return data;
  }
}

class Groups {
  int? nm;
  String? name;
  bool? useName;
  bool? hasTbl;
  //List<Participants>? participants;
  List<CompGames>? games;
  int? destStage;
  int? destGroup;
  bool? groupBy;
  int? gamesCount;
  int? liveCount;
  List<int>? score;
  int? toQualify;
  bool? isFinal;
  int? homeAwayTeamOrder;

  Groups(
      {this.nm,
      this.name,
      this.useName,
      this.hasTbl,
      // this.participants,
      this.games,
      this.destStage,
      this.destGroup,
      this.groupBy,
      this.gamesCount,
      this.liveCount,
      this.score,
      this.toQualify,
      this.isFinal,
      this.homeAwayTeamOrder});

  Groups.fromJson(Map<String, dynamic> json) {
    nm = json['Num'];
    name = json['Name'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    // if (json['Participants'] != null) {
    //   participants = <Participants>[];
    //   json['Participants'].forEach((v) {
    //     participants!.add(Participants.fromJson(v));
    //   });
    // }
    if (json['Games'] != null) {
      games = <CompGames>[];
      json['Games'].forEach((v) {
        games!.add(CompGames.fromJson(v));
      });
    }
    destStage = json['DestStage'];
    destGroup = json['DestGroup'];
    groupBy = json['GroupBy'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
    score = json['Score'].cast<int>();
    toQualify = json['ToQualify'];
    isFinal = json['IsFinal'];
    homeAwayTeamOrder = json['HomeAwayTeamOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = nm;
    data['Name'] = name;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    // if (participants != null) {
    //   data['Participants'] = participants!.map((v) => v.toJson()).toList();
    // }
    if (games != null) {
      data['Games'] = games!.map((v) => v.toJson()).toList();
    }
    data['DestStage'] = destStage;
    data['DestGroup'] = destGroup;
    data['GroupBy'] = groupBy;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    data['Score'] = score;
    data['ToQualify'] = toQualify;
    data['IsFinal'] = isFinal;
    data['HomeAwayTeamOrder'] = homeAwayTeamOrder;
    return data;
  }
}

// class Participants {
//   int? nm;
//   String? name;
//   bool? useName;
//   int? originStage;
//   int? originGroup;
//   int? originPosition;
//   int? competitorID;
//   String? symbolicName;
//   String? seed;
//   String? shortName;

//   Participants(
//       {this.nm,
//       this.name,
//       this.useName,
//       this.originStage,
//       this.originGroup,
//       this.originPosition,
//       this.competitorID,
//       this.symbolicName,
//       this.seed,
//       this.shortName});

//   Participants.fromJson(Map<String, dynamic> json) {
//     nm = json['Num'];
//     name = json['Name'];
//     useName = json['UseName'];
//     originStage = json['OriginStage'];
//     originGroup = json['OriginGroup'];
//     originPosition = json['OriginPosition'];
//     competitorID = json['CompetitorID'];
//     symbolicName = json['SymbolicName'];
//     seed = json['Seed'];
//     shortName = json['ShortName'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['Num'] = nm;
//     data['Name'] = name;
//     data['UseName'] = useName;
//     data['OriginStage'] = originStage;
//     data['OriginGroup'] = originGroup;
//     data['OriginPosition'] = originPosition;
//     data['CompetitorID'] = competitorID;
//     data['SymbolicName'] = symbolicName;
//     data['Seed'] = seed;
//     data['ShortName'] = shortName;
//     return data;
//   }
// }

class CompGames {
  String? startTimeUTC;
  int? nm;
  bool? useName;
  String? startTime;
  int? gameID;
  Venue? venue;
  Game? game;
  int? sportTypeID;
  int? competitionID;
  int? seasonNum;
  int? stageNum;
  int? groupNum;
  List<Competitors>? competitors;

  CompGames(
      {this.startTimeUTC,
      this.nm,
      this.useName,
      this.startTime,
      this.gameID,
      this.venue,
      this.game,
      this.sportTypeID,
      this.competitionID,
      this.seasonNum,
      this.stageNum,
      this.groupNum,
      this.competitors});

  CompGames.fromJson(Map<String, dynamic> json) {
    startTimeUTC = json['StartTimeUTC'];
    nm = json['Num'];
    useName = json['UseName'];
    startTime = json['StartTime'];
    gameID = json['GameID'];
    venue = json['Venue'] != null ? Venue.fromJson(json['Venue']) : null;
    game = json['Game'] != null ? Game.fromJson(json['Game']) : null;
    sportTypeID = json['SportTypeID'];
    competitionID = json['CompetitionID'];
    seasonNum = json['SeasonNum'];
    stageNum = json['StageNum'];
    groupNum = json['GroupNum'];
    if (json['Competitors'] != null) {
      competitors = <Competitors>[];
      json['Competitors'].forEach((v) {
        competitors!.add(Competitors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StartTimeUTC'] = startTimeUTC;
    data['Num'] = nm;
    data['UseName'] = useName;
    data['StartTime'] = startTime;
    data['GameID'] = gameID;
    if (venue != null) {
      data['Venue'] = venue!.toJson();
    }
    if (game != null) {
      data['Game'] = game!.toJson();
    }
    data['SportTypeID'] = sportTypeID;
    data['CompetitionID'] = competitionID;
    data['SeasonNum'] = seasonNum;
    data['StageNum'] = stageNum;
    data['GroupNum'] = groupNum;
    if (competitors != null) {
      data['Competitors'] = competitors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Venue {
  int? iD;
  String? name;
  String? sName;

  Venue({this.iD, this.name, this.sName});

  Venue.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    sName = json['SName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['SName'] = sName;
    return data;
  }
}

class Game {
  int? sID;
  int? iD;
  int? comp;
  String? sTime;
  int? season;
  int? stage;
  int? group;
  List<CompComps>? comps;
  int? sTID;
  List<int>? scrs;
  int? winner;
  bool? neutralVenue;
  int? toQualify;
  int? homeAwayTeamOrder;
  int? surface;

  Game(
      {this.sID,
      this.iD,
      this.comp,
      this.sTime,
      this.season,
      this.stage,
      this.group,
      this.comps,
      this.sTID,
      this.scrs,
      this.winner,
      this.neutralVenue,
      this.toQualify,
      this.homeAwayTeamOrder,
      this.surface});

  Game.fromJson(Map<String, dynamic> json) {
    sID = json['SID'];
    iD = json['ID'];
    comp = json['Comp'];
    sTime = json['STime'];
    season = json['Season'];
    stage = json['Stage'];
    group = json['Group'];
    if (json['Comps'] != null) {
      comps = <CompComps>[];
      json['Comps'].forEach((v) {
        comps!.add(CompComps.fromJson(v));
      });
    }
    sTID = json['STID'];
    scrs = json['Scrs'].cast<int>();
    winner = json['Winner'];
    neutralVenue = json['NeutralVenue'];
    toQualify = json['ToQualify'];
    homeAwayTeamOrder = json['HomeAwayTeamOrder'];
    surface = json['Surface'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SID'] = sID;
    data['ID'] = iD;
    data['Comp'] = comp;
    data['STime'] = sTime;
    data['Season'] = season;
    data['Stage'] = stage;
    data['Group'] = group;
    if (comps != null) {
      data['Comps'] = comps!.map((v) => v.toJson()).toList();
    }
    data['STID'] = sTID;
    data['Scrs'] = scrs;
    data['Winner'] = winner;
    data['NeutralVenue'] = neutralVenue;
    data['ToQualify'] = toQualify;
    data['HomeAwayTeamOrder'] = homeAwayTeamOrder;
    data['Surface'] = surface;
    return data;
  }
}

class CompComps {
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
  int? type;
  int? popularityRank;
  int? imgVer;
  String? sName;

  CompComps(
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
      this.type,
      this.popularityRank,
      this.imgVer,
      this.sName});

  CompComps.fromJson(Map<String, dynamic> json) {
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
    type = json['Type'];
    popularityRank = json['PopularityRank'];
    imgVer = json['ImgVer'];
    sName = json['SName'];
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
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    data['ImgVer'] = imgVer;
    data['SName'] = sName;
    return data;
  }
}

class Summary {
  String? rangeStart;
  String? rangeEnd;
  bool? includesToday;
  List<Dates>? dates;

  Summary({this.rangeStart, this.rangeEnd, this.includesToday, this.dates});

  Summary.fromJson(Map<String, dynamic> json) {
    rangeStart = json['RangeStart'];
    rangeEnd = json['RangeEnd'];
    includesToday = json['IncludesToday'];
    if (json['Dates'] != null) {
      dates = <Dates>[];
      json['Dates'].forEach((v) {
        dates!.add(Dates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RangeStart'] = rangeStart;
    data['RangeEnd'] = rangeEnd;
    data['IncludesToday'] = includesToday;
    if (dates != null) {
      data['Dates'] = dates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dates {
  String? date;
  int? count;

  Dates({this.date, this.count});

  Dates.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    count = json['Count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Date'] = date;
    data['Count'] = count;
    return data;
  }
}

class Competitors {
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
  int? type;
  int? popularityRank;
  int? imgVer;

  Competitors(
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
      this.type,
      this.popularityRank,
      this.imgVer});

  Competitors.fromJson(Map<String, dynamic> json) {
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
    type = json['Type'];
    popularityRank = json['PopularityRank'];
    imgVer = json['ImgVer'];
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
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    data['ImgVer'] = imgVer;
    return data;
  }
}
