class PlayerMatch {
  List<Sections>? sections;
  List<SectionsGroups>? sectionsGroups;
  Header? header;

  PlayerMatch({this.sections, this.sectionsGroups, this.header});

  PlayerMatch.fromJson(Map<String, dynamic> json) {
    if (json['Sections'] != null) {
      sections = <Sections>[];
      json['Sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
    if (json['SectionsGroups'] != null) {
      sectionsGroups = <SectionsGroups>[];
      json['SectionsGroups'].forEach((v) {
        sectionsGroups!.add(SectionsGroups.fromJson(v));
      });
    }
    header = json['Header'] != null ? Header.fromJson(json['Header']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sections != null) {
      data['Sections'] = sections!.map((v) => v.toJson()).toList();
    }
    if (sectionsGroups != null) {
      data['SectionsGroups'] = sectionsGroups!.map((v) => v.toJson()).toList();
    }
    if (header != null) {
      data['Header'] = header!.toJson();
    }
    return data;
  }
}

class Sections {
  Data? data;
  int? gamesToday;
  bool? showCalendar;
  // List<Null>? competitionsFilter;
  int? sType;
  String? key;
  String? name;
  bool? dfault;
  String? iconKey;
  int? group;
  bool? hasBrackets;
  bool? live;

  Sections(
      {this.data,
      this.gamesToday,
      this.showCalendar,
      // this.competitionsFilter,
      this.sType,
      this.key,
      this.name,
      this.dfault,
      this.iconKey,
      this.group,
      this.hasBrackets,
      this.live});

  Sections.fromJson(Map<String, dynamic> json) {
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
    gamesToday = json['GamesToday'];
    showCalendar = json['ShowCalendar'];
    // if (json['CompetitionsFilter'] != null) {
    // 	competitionsFilter = <Null>[];
    // 	json['CompetitionsFilter'].forEach((v) { competitionsFilter!.add(new Null.fromJson(v)); });
    // }
    sType = json['SType'];
    key = json['Key'];
    name = json['Name'];
    dfault = json['Default'];
    iconKey = json['IconKey'];
    group = json['Group'];
    hasBrackets = json['HasBrackets'];
    live = json['Live'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    data['GamesToday'] = gamesToday;
    data['ShowCalendar'] = showCalendar;
    // if (this.competitionsFilter != null) {
    //   data['CompetitionsFilter'] =
    //       this.competitionsFilter!.map((v) => v.toJson()).toList();
    // }
    data['SType'] = sType;
    data['Key'] = key;
    data['Name'] = name;
    data['Default'] = dfault;
    data['IconKey'] = iconKey;
    data['Group'] = group;
    data['HasBrackets'] = hasBrackets;
    data['Live'] = live;
    return data;
  }
}

class Data {
  int? lastUpdateID;
  List<Countries>? countries;
  int? requestedUpdateID;
  List<Games>? games;
  List<Competitions>? competitions;
  // List<Null>? bookmakers;
  String? currentDate;
  int? tTL;
  int? scrollIndex;
  Summary? summary;
  Paging? paging;

  Data(
      {this.lastUpdateID,
      this.countries,
      this.requestedUpdateID,
      this.games,
      this.competitions,
      //  this.bookmakers,
      this.currentDate,
      this.tTL,
      this.scrollIndex,
      this.summary,
      this.paging});

  Data.fromJson(Map<String, dynamic> json) {
    lastUpdateID = json['LastUpdateID'];
    if (json['Countries'] != null) {
      countries = <Countries>[];
      json['Countries'].forEach((v) {
        countries!.add(Countries.fromJson(v));
      });
    }
    requestedUpdateID = json['RequestedUpdateID'];
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
    // if (json['Bookmakers'] != null) {
    //   bookmakers = <Null>[];
    //   json['Bookmakers'].forEach((v) {
    //     bookmakers!.add(new Null.fromJson(v));
    //   });
    // }
    currentDate = json['CurrentDate'];
    tTL = json['TTL'];
    scrollIndex = json['ScrollIndex'];
    summary =
        json['Summary'] != null ? Summary.fromJson(json['Summary']) : null;
    paging = json['Paging'] != null ? Paging.fromJson(json['Paging']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['LastUpdateID'] = lastUpdateID;
    if (countries != null) {
      data['Countries'] = countries!.map((v) => v.toJson()).toList();
    }
    data['RequestedUpdateID'] = requestedUpdateID;
    if (games != null) {
      data['Games'] = games!.map((v) => v.toJson()).toList();
    }
    if (competitions != null) {
      data['Competitions'] = competitions!.map((v) => v.toJson()).toList();
    }
    // if (this.bookmakers != null) {
    //   data['Bookmakers'] = this.bookmakers!.map((v) => v.toJson()).toList();
    // }
    data['CurrentDate'] = currentDate;
    data['TTL'] = tTL;
    data['ScrollIndex'] = scrollIndex;
    if (summary != null) {
      data['Summary'] = summary!.toJson();
    }
    if (paging != null) {
      data['Paging'] = paging!.toJson();
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
  int? gT;
  int? preciseGT;
  bool? autoProgressGT;
  int? completion;
  int? regularTimeCompletion;
  String? gTD;
  String? sTime;
  String? eTime;
  int? showInGameCountdown;
  List<Comps>? comps;
  List<int>? scrs;
  Scoreboard? scoreboard;
  bool? showScoreboard;
  int? toQualify;
  bool? onTV;
  bool? hasBets;
  int? winner;
  bool? neutralVenue;
  bool? hasStatistics;
  bool? hasTopPerformers;
  SocialStats? socialStats;
  WhoWillWinReults? whoWillWinReults;
  bool? showTracker;
  bool? hasTable;
  List<StageTimes>? stageTimes;
  int? homeAwayTeamOrder;
  String? webUrl;
  List<ExtraScores>? extraScores;
  bool? hasBuzz;
  int? wonTitle;
  bool? hasVideo;
  bool? presentVideoScreen;
  List<Videos>? videos;
  int? round;
  String? winDescription;
  String? roundName;
  bool? hasNews;
  String? chatUrl;
  bool? hasTrends;
  bool? topTrendsAvailable;
  int? servNum;
  int? possession;
  bool? hasBetsTeaser;

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
      this.scoreboard,
      this.showScoreboard,
      this.toQualify,
      this.onTV,
      this.hasBets,
      this.winner,
      this.neutralVenue,
      this.hasStatistics,
      this.hasTopPerformers,
      this.socialStats,
      this.whoWillWinReults,
      this.showTracker,
      this.hasTable,
      this.stageTimes,
      this.homeAwayTeamOrder,
      this.webUrl,
      this.extraScores,
      this.hasBuzz,
      this.wonTitle,
      this.hasVideo,
      this.presentVideoScreen,
      this.videos,
      this.round,
      this.winDescription,
      this.roundName,
      this.hasNews,
      this.chatUrl,
      this.hasTrends,
      this.topTrendsAvailable,
      this.servNum,
      this.possession,
      this.hasBetsTeaser});

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
    scoreboard = json['Scoreboard'] != null
        ? Scoreboard.fromJson(json['Scoreboard'])
        : null;
    showScoreboard = json['ShowScoreboard'];
    toQualify = json['ToQualify'];
    onTV = json['OnTV'];
    hasBets = json['HasBets'];
    winner = json['Winner'];
    neutralVenue = json['NeutralVenue'];
    hasStatistics = json['HasStatistics'];
    hasTopPerformers = json['HasTopPerformers'];
    socialStats = json['SocialStats'] != null
        ? SocialStats.fromJson(json['SocialStats'])
        : null;
    whoWillWinReults = json['WhoWillWinReults'] != null
        ? WhoWillWinReults.fromJson(json['WhoWillWinReults'])
        : null;
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
    hasBuzz = json['HasBuzz'];
    wonTitle = json['WonTitle'];
    hasVideo = json['HasVideo'];
    presentVideoScreen = json['PresentVideoScreen'];
    if (json['Videos'] != null) {
      videos = <Videos>[];
      json['Videos'].forEach((v) {
        videos!.add(Videos.fromJson(v));
      });
    }
    round = json['Round'];
    winDescription = json['WinDescription'];
    roundName = json['RoundName'];
    hasNews = json['HasNews'];
    chatUrl = json['ChatUrl'];
    hasTrends = json['HasTrends'];
    topTrendsAvailable = json['TopTrendsAvailable'];
    servNum = json['ServNum'];
    possession = json['Possession'];
    hasBetsTeaser = json['HasBetsTeaser'];
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
    if (scoreboard != null) {
      data['Scoreboard'] = scoreboard!.toJson();
    }
    data['ShowScoreboard'] = showScoreboard;
    data['ToQualify'] = toQualify;
    data['OnTV'] = onTV;
    data['HasBets'] = hasBets;
    data['Winner'] = winner;
    data['NeutralVenue'] = neutralVenue;
    data['HasStatistics'] = hasStatistics;
    data['HasTopPerformers'] = hasTopPerformers;
    if (socialStats != null) {
      data['SocialStats'] = socialStats!.toJson();
    }
    if (whoWillWinReults != null) {
      data['WhoWillWinReults'] = whoWillWinReults!.toJson();
    }
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
    data['HasBuzz'] = hasBuzz;
    data['WonTitle'] = wonTitle;
    data['HasVideo'] = hasVideo;
    data['PresentVideoScreen'] = presentVideoScreen;
    if (videos != null) {
      data['Videos'] = videos!.map((v) => v.toJson()).toList();
    }
    data['Round'] = round;
    data['WinDescription'] = winDescription;
    data['RoundName'] = roundName;
    data['HasNews'] = hasNews;
    data['ChatUrl'] = chatUrl;
    data['HasTrends'] = hasTrends;
    data['TopTrendsAvailable'] = topTrendsAvailable;
    data['ServNum'] = servNum;
    data['Possession'] = possession;
    data['HasBetsTeaser'] = hasBetsTeaser;
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
  List<int>? trend;
  int? type;
  int? popularityRank;
  List<Rankings>? rankings;
  int? imgVer;
  String? chatUrl;
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
      this.trend,
      this.type,
      this.popularityRank,
      this.rankings,
      this.imgVer,
      this.chatUrl,
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
    trend = json['Trend'].cast<int>();
    type = json['Type'];
    popularityRank = json['PopularityRank'];
    if (json['Rankings'] != null) {
      rankings = <Rankings>[];
      json['Rankings'].forEach((v) {
        rankings!.add(Rankings.fromJson(v));
      });
    }
    imgVer = json['ImgVer'];
    chatUrl = json['ChatUrl'];
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
    data['Trend'] = trend;
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    if (rankings != null) {
      data['Rankings'] = rankings!.map((v) => v.toJson()).toList();
    }
    data['ImgVer'] = imgVer;
    data['ChatUrl'] = chatUrl;
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

class Scoreboard {
  bool? showTimeRow;
  bool? scrollToEnd;
  List<Columns>? columns;

  Scoreboard({this.showTimeRow, this.scrollToEnd, this.columns});

  Scoreboard.fromJson(Map<String, dynamic> json) {
    showTimeRow = json['ShowTimeRow'];
    scrollToEnd = json['ScrollToEnd'];
    if (json['Columns'] != null) {
      columns = <Columns>[];
      json['Columns'].forEach((v) {
        columns!.add(Columns.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ShowTimeRow'] = showTimeRow;
    data['ScrollToEnd'] = scrollToEnd;
    if (columns != null) {
      data['Columns'] = columns!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Columns {
  int? stageId;
  String? name;
  String? sName;
  List<String>? scores;
  int? winner;
  String? time;
  bool? main;
  List<int>? extraScores;

  Columns(
      {this.stageId,
      this.name,
      this.sName,
      this.scores,
      this.winner,
      this.time,
      this.main,
      this.extraScores});

  Columns.fromJson(Map<String, dynamic> json) {
    stageId = json['StageId'];
    name = json['Name'];
    sName = json['SName'];
    scores = json['Scores'].cast<String>();
    winner = json['Winner'];
    time = json['Time'];
    main = json['Main'];
    extraScores = json['ExtraScores'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StageId'] = stageId;
    data['Name'] = name;
    data['SName'] = sName;
    data['Scores'] = scores;
    data['Winner'] = winner;
    data['Time'] = time;
    data['Main'] = main;
    data['ExtraScores'] = extraScores;
    return data;
  }
}

class SocialStats {
  int? comments;

  SocialStats({this.comments});

  SocialStats.fromJson(Map<String, dynamic> json) {
    comments = json['Comments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Comments'] = comments;
    return data;
  }
}

class WhoWillWinReults {
  int? vote1;
  int? voteX;
  int? vote2;

  WhoWillWinReults({this.vote1, this.voteX, this.vote2});

  WhoWillWinReults.fromJson(Map<String, dynamic> json) {
    vote1 = json['Vote1'];
    voteX = json['VoteX'];
    vote2 = json['Vote2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Vote1'] = vote1;
    data['VoteX'] = voteX;
    data['Vote2'] = vote2;
    return data;
  }
}

class StageTimes {
  int? stageID;
  int? minutes;
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

class Videos {
  String? uRL;
  String? caption;
  int? vType;
  String? vID;
  int? src;
  bool? requireDisclaimer;
  String? createTime;
  bool? showOnMain;
  bool? embeddingAllowed;

  Videos(
      {this.uRL,
      this.caption,
      this.vType,
      this.vID,
      this.src,
      this.requireDisclaimer,
      this.createTime,
      this.showOnMain,
      this.embeddingAllowed});

  Videos.fromJson(Map<String, dynamic> json) {
    uRL = json['URL'];
    caption = json['Caption'];
    vType = json['VType'];
    vID = json['VID'];
    src = json['Src'];
    requireDisclaimer = json['RequireDisclaimer'];
    createTime = json['CreateTime'];
    showOnMain = json['ShowOnMain'];
    embeddingAllowed = json['EmbeddingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['URL'] = uRL;
    data['Caption'] = caption;
    data['VType'] = vType;
    data['VID'] = vID;
    data['Src'] = src;
    data['RequireDisclaimer'] = requireDisclaimer;
    data['CreateTime'] = createTime;
    data['ShowOnMain'] = showOnMain;
    data['EmbeddingAllowed'] = embeddingAllowed;
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
  bool? halfExpanded;
  int? gender;
  int? fatherCompetition;
  String? color;
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
      this.halfExpanded,
      this.gender,
      this.fatherCompetition,
      this.color,
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
    halfExpanded = json['HalfExpanded'];
    gender = json['Gender'];
    fatherCompetition = json['FatherCompetition'];
    color = json['Color'];
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
    data['HalfExpanded'] = halfExpanded;
    data['Gender'] = gender;
    data['FatherCompetition'] = fatherCompetition;
    data['Color'] = color;
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
  bool? hasBrackets;
  bool? hasSeed;
  List<Stages>? stages;
  String? knockoutTitle;
  String? start;
  String? end;

  Seasons(
      {this.num,
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
    num = json['Num'];
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
    data['Num'] = num;
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
  int? num;
  String? name;
  bool? useName;
  bool? hasTbl;
  bool? isFinal;
  int? stageType;
  bool? filterDivision;
  List<Groups>? groups;
  int? gamesCount;
  int? liveCount;
  bool? connectedToNextStage;

  Stages(
      {this.num,
      this.name,
      this.useName,
      this.hasTbl,
      this.isFinal,
      this.stageType,
      this.filterDivision,
      this.groups,
      this.gamesCount,
      this.liveCount,
      this.connectedToNextStage});

  Stages.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
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
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
    connectedToNextStage = json['ConnectedToNextStage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    data['IsFinal'] = isFinal;
    data['StageType'] = stageType;
    data['FilterDivision'] = filterDivision;
    if (groups != null) {
      data['Groups'] = groups!.map((v) => v.toJson()).toList();
    }
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
    data['ConnectedToNextStage'] = connectedToNextStage;
    return data;
  }
}

class Groups {
  int? num;
  String? name;
  bool? useName;
  bool? hasTbl;
  List<Participants>? participants;
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
  String? winDescription;

  Groups(
      {this.num,
      this.name,
      this.useName,
      this.hasTbl,
      this.participants,
      this.games,
      this.destStage,
      this.destGroup,
      this.groupBy,
      this.gamesCount,
      this.liveCount,
      this.score,
      this.toQualify,
      this.isFinal,
      this.homeAwayTeamOrder,
      this.winDescription});

  Groups.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    name = json['Name'];
    useName = json['UseName'];
    hasTbl = json['HasTbl'];
    if (json['Participants'] != null) {
      participants = <Participants>[];
      json['Participants'].forEach((v) {
        participants!.add(Participants.fromJson(v));
      });
    }
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
    winDescription = json['WinDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['UseName'] = useName;
    data['HasTbl'] = hasTbl;
    if (participants != null) {
      data['Participants'] = participants!.map((v) => v.toJson()).toList();
    }
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
    data['WinDescription'] = winDescription;
    return data;
  }
}

class Participants {
  int? num;
  String? name;
  bool? useName;
  int? originStage;
  int? originGroup;
  int? originPosition;
  int? competitorID;
  String? symbolicName;
  String? seed;
  String? shortName;

  Participants(
      {this.num,
      this.name,
      this.useName,
      this.originStage,
      this.originGroup,
      this.originPosition,
      this.competitorID,
      this.symbolicName,
      this.seed,
      this.shortName});

  Participants.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    name = json['Name'];
    useName = json['UseName'];
    originStage = json['OriginStage'];
    originGroup = json['OriginGroup'];
    originPosition = json['OriginPosition'];
    competitorID = json['CompetitorID'];
    symbolicName = json['SymbolicName'];
    seed = json['Seed'];
    shortName = json['ShortName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['UseName'] = useName;
    data['OriginStage'] = originStage;
    data['OriginGroup'] = originGroup;
    data['OriginPosition'] = originPosition;
    data['CompetitorID'] = competitorID;
    data['SymbolicName'] = symbolicName;
    data['Seed'] = seed;
    data['ShortName'] = shortName;
    return data;
  }
}

class CompGames {
  String? startTimeUTC;
  int? num;
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
      this.num,
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
    num = json['Num'];
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
    data['Num'] = num;
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
  int? round;

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
      this.surface,
      this.round});

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
    round = json['Round'];
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
    data['Round'] = round;
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
  String? chatUrl;
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
      this.chatUrl,
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
    chatUrl = json['ChatUrl'];
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
    data['ChatUrl'] = chatUrl;
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

class Paging {
  String? previousPage;
  String? nextPage;

  Paging({this.previousPage, this.nextPage});

  Paging.fromJson(Map<String, dynamic> json) {
    previousPage = json['PreviousPage'];
    nextPage = json['NextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PreviousPage'] = previousPage;
    data['NextPage'] = nextPage;
    return data;
  }
}

class SectionsGroups {
  int? iD;
  String? name;

  SectionsGroups({this.iD, this.name});

  SectionsGroups.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    return data;
  }
}

class Header {
  String? mainColor;
  Entity? entity;
  bool? hasLogo;
  String? textColor;

  Header({this.mainColor, this.entity, this.hasLogo, this.textColor});

  Header.fromJson(Map<String, dynamic> json) {
    mainColor = json['MainColor'];
    entity = json['Entity'] != null ? Entity.fromJson(json['Entity']) : null;
    hasLogo = json['HasLogo'];
    textColor = json['TextColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MainColor'] = mainColor;
    if (entity != null) {
      data['Entity'] = entity!.toJson();
    }
    data['HasLogo'] = hasLogo;
    data['TextColor'] = textColor;
    return data;
  }
}

class Entity {
  int? iD;
  int? sportTypeID;
  int? entityType;
  String? name;
  int? cID;
  int? mainComp;
  Competitor? competitor;

  Entity(
      {this.iD,
      this.sportTypeID,
      this.entityType,
      this.name,
      this.cID,
      this.mainComp,
      this.competitor});

  Entity.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    sportTypeID = json['SportTypeID'];
    entityType = json['EntityType'];
    name = json['Name'];
    cID = json['CID'];
    mainComp = json['MainComp'];
    competitor = json['Competitor'] != null
        ? Competitor.fromJson(json['Competitor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['SportTypeID'] = sportTypeID;
    data['EntityType'] = entityType;
    data['Name'] = name;
    data['CID'] = cID;
    data['MainComp'] = mainComp;
    if (competitor != null) {
      data['Competitor'] = competitor!.toJson();
    }
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
  MainCompetition? mainCompetition;
  int? mainComp;
  bool? competitionHasTexture;
  int? type;
  int? popularityRank;
  List<Rankings>? rankings;
  int? imgVer;
  String? chatUrl;

  Competitor(
      {this.iD,
      this.name,
      this.symbolicName,
      this.nameForURL,
      this.cID,
      this.sID,
      this.color,
      this.textColor,
      this.mainCompetition,
      this.mainComp,
      this.competitionHasTexture,
      this.type,
      this.popularityRank,
      this.rankings,
      this.imgVer,
      this.chatUrl});

  Competitor.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    symbolicName = json['SymbolicName'];
    nameForURL = json['NameForURL'];
    cID = json['CID'];
    sID = json['SID'];
    color = json['Color'];
    textColor = json['TextColor'];
    mainCompetition = json['MainCompetition'] != null
        ? MainCompetition.fromJson(json['MainCompetition'])
        : null;
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
    chatUrl = json['ChatUrl'];
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
    if (mainCompetition != null) {
      data['MainCompetition'] = mainCompetition!.toJson();
    }
    data['MainComp'] = mainComp;
    data['CompetitionHasTexture'] = competitionHasTexture;
    data['Type'] = type;
    data['PopularityRank'] = popularityRank;
    if (rankings != null) {
      data['Rankings'] = rankings!.map((v) => v.toJson()).toList();
    }
    data['ImgVer'] = imgVer;
    data['ChatUrl'] = chatUrl;
    return data;
  }
}

class MainCompetition {
  String? name;
  String? sName;
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

  MainCompetition(
      {this.name,
      this.sName,
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
      this.popularityRank});

  MainCompetition.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    sName = json['SName'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['SName'] = sName;
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
  String? chatUrl;

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
      this.imgVer,
      this.chatUrl});

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
    chatUrl = json['ChatUrl'];
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
    data['ChatUrl'] = chatUrl;
    return data;
  }
}
