class MatchDetail {
  List<Countries>? countries;
  List<Games>? games;
  List<Competitions>? competitions;

  MatchDetail({
    this.countries,
    this.games,
    this.competitions,
  });

  MatchDetail.fromJson(Map<String, dynamic> json) {
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
  bool? hasTrends;
  bool? topTrendsAvailable;
  PromotedPredictions? promotedPredictions;
  bool? neutralVenue;
  Venue? venue;
  bool? hasStatistics;
  List<Statistics>? statistics;
  bool? hasTopPerformers;
  bool? hasNews;
  News? news;
  bool? hasBuzz;
  News? buzz;
  SocialStats? socialStats;
  WhoWillWinReults? whoWillWinReults;
  bool? showTracker;
  List<LastMatches>? lastMatches;
  bool? hasTable;
  List<StageTimes>? stageTimes;
  List<ExtraScores>? extraScores;
  List<TrendingItems>? trendingItems;
  bool? showStatsCard;
  int? homeAwayTeamOrder;
  String? webUrl;
  String? competitionDisplayName;

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
      this.hasTrends,
      this.topTrendsAvailable,
      this.promotedPredictions,
      this.neutralVenue,
      this.venue,
      this.hasStatistics,
      this.statistics,
      this.hasTopPerformers,
      this.hasNews,
      this.news,
      this.hasBuzz,
      this.buzz,
      this.socialStats,
      this.whoWillWinReults,
      this.showTracker,
      this.lastMatches,
      this.hasTable,
      this.stageTimes,
      this.extraScores,
      this.trendingItems,
      this.showStatsCard,
      this.homeAwayTeamOrder,
      this.webUrl,
      this.competitionDisplayName});

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
    hasTrends = json['HasTrends'];
    topTrendsAvailable = json['TopTrendsAvailable'];
    promotedPredictions = json['PromotedPredictions'] != null
        ? PromotedPredictions.fromJson(json['PromotedPredictions'])
        : null;
    neutralVenue = json['NeutralVenue'];
    venue = json['Venue'] != null ? Venue.fromJson(json['Venue']) : null;
    hasStatistics = json['HasStatistics'];
    if (json['Statistics'] != null) {
      statistics = <Statistics>[];
      json['Statistics'].forEach((v) {
        statistics!.add(Statistics.fromJson(v));
      });
    }
    hasTopPerformers = json['HasTopPerformers'];
    hasNews = json['HasNews'];
    news = json['News'] != null ? News.fromJson(json['News']) : null;
    hasBuzz = json['HasBuzz'];
    buzz = json['Buzz'] != null ? News.fromJson(json['Buzz']) : null;
    socialStats = json['SocialStats'] != null
        ? SocialStats.fromJson(json['SocialStats'])
        : null;
    whoWillWinReults = json['WhoWillWinReults'] != null
        ? WhoWillWinReults.fromJson(json['WhoWillWinReults'])
        : null;
    showTracker = json['ShowTracker'];
    if (json['LastMatches'] != null) {
      lastMatches = <LastMatches>[];
      json['LastMatches'].forEach((v) {
        lastMatches!.add(LastMatches.fromJson(v));
      });
    }
    hasTable = json['HasTable'];
    if (json['StageTimes'] != null) {
      stageTimes = <StageTimes>[];
      json['StageTimes'].forEach((v) {
        stageTimes!.add(StageTimes.fromJson(v));
      });
    }
    if (json['ExtraScores'] != null) {
      extraScores = <ExtraScores>[];
      json['ExtraScores'].forEach((v) {
        extraScores!.add(ExtraScores.fromJson(v));
      });
    }
    if (json['TrendingItems'] != null) {
      trendingItems = <TrendingItems>[];
      json['TrendingItems'].forEach((v) {
        trendingItems!.add(TrendingItems.fromJson(v));
      });
    }
    showStatsCard = json['ShowStatsCard'];
    homeAwayTeamOrder = json['HomeAwayTeamOrder'];
    webUrl = json['WebUrl'];
    competitionDisplayName = json['CompetitionDisplayName'];
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
    data['HasTrends'] = hasTrends;
    data['TopTrendsAvailable'] = topTrendsAvailable;
    if (promotedPredictions != null) {
      data['PromotedPredictions'] = promotedPredictions!.toJson();
    }
    data['NeutralVenue'] = neutralVenue;
    if (venue != null) {
      data['Venue'] = venue!.toJson();
    }
    data['HasStatistics'] = hasStatistics;
    if (statistics != null) {
      data['Statistics'] = statistics!.map((v) => v.toJson()).toList();
    }
    data['HasTopPerformers'] = hasTopPerformers;
    data['HasNews'] = hasNews;
    if (news != null) {
      data['News'] = news!.toJson();
    }
    data['HasBuzz'] = hasBuzz;
    if (buzz != null) {
      data['Buzz'] = buzz!.toJson();
    }
    if (socialStats != null) {
      data['SocialStats'] = socialStats!.toJson();
    }
    if (whoWillWinReults != null) {
      data['WhoWillWinReults'] = whoWillWinReults!.toJson();
    }
    data['ShowTracker'] = showTracker;
    if (lastMatches != null) {
      data['LastMatches'] = lastMatches!.map((v) => v.toJson()).toList();
    }
    data['HasTable'] = hasTable;
    if (stageTimes != null) {
      data['StageTimes'] = stageTimes!.map((v) => v.toJson()).toList();
    }
    if (extraScores != null) {
      data['ExtraScores'] = extraScores!.map((v) => v.toJson()).toList();
    }
    if (trendingItems != null) {
      data['TrendingItems'] = trendingItems!.map((v) => v.toJson()).toList();
    }
    data['ShowStatsCard'] = showStatsCard;
    data['HomeAwayTeamOrder'] = homeAwayTeamOrder;
    data['WebUrl'] = webUrl;
    data['CompetitionDisplayName'] = competitionDisplayName;
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
  List<LastMatches>? lastMatches;
  int? type;
  int? popularityRank;
  List<Rankings>? rankings;
  int? imgVer;
  String? chatUrl;

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
      this.lastMatches,
      this.type,
      this.popularityRank,
      this.rankings,
      this.imgVer,
      this.chatUrl});

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
    if (json['LastMatches'] != null) {
      lastMatches = <LastMatches>[];
      json['LastMatches'].forEach((v) {
        lastMatches!.add(LastMatches.fromJson(v));
      });
    }
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
    data['MainComp'] = mainComp;
    data['CompetitionHasTexture'] = competitionHasTexture;
    data['Trend'] = trend;
    if (lastMatches != null) {
      data['LastMatches'] = lastMatches!.map((v) => v.toJson()).toList();
    }
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

class LastMatches {
  int? sID;
  int? iD;
  int? comp;
  String? sTime;
  int? season;
  int? stage;
  int? group;
  List<Comps>? comps;
  int? sTID;
  List<int>? scrs;
  int? winner;
  bool? neutralVenue;
  int? toQualify;
  int? homeAwayTeamOrder;
  int? surface;
  int? round;

  LastMatches(
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

  LastMatches.fromJson(Map<String, dynamic> json) {
    sID = json['SID'];
    iD = json['ID'];
    comp = json['Comp'];
    sTime = json['STime'];
    season = json['Season'];
    stage = json['Stage'];
    group = json['Group'];
    if (json['Comps'] != null) {
      comps = <Comps>[];
      json['Comps'].forEach((v) {
        comps!.add(Comps.fromJson(v));
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
  List<int>? extraScores;
  String? time;
  bool? main;

  Columns(
      {this.stageId,
      this.name,
      this.sName,
      this.scores,
      this.winner,
      this.extraScores,
      this.time,
      this.main});

  Columns.fromJson(Map<String, dynamic> json) {
    stageId = json['StageId'];
    name = json['Name'];
    sName = json['SName'];
    scores = json['Scores'].cast<String>();
    winner = json['Winner'];
    extraScores = json['ExtraScores'].cast<int>();
    time = json['Time'];
    main = json['Main'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StageId'] = stageId;
    data['Name'] = name;
    data['SName'] = sName;
    data['Scores'] = scores;
    data['Winner'] = winner;
    data['ExtraScores'] = extraScores;
    data['Time'] = time;
    data['Main'] = main;
    return data;
  }
}

class PromotedPredictions {
  List<Predictions>? predictions;

  PromotedPredictions({this.predictions});

  PromotedPredictions.fromJson(Map<String, dynamic> json) {
    if (json['Predictions'] != null) {
      predictions = <Predictions>[];
      json['Predictions'].forEach((v) {
        predictions!.add(Predictions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (predictions != null) {
      data['Predictions'] = predictions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Predictions {
  int? iD;
  int? lineTypeID;
  String? votingKey;
  List<int>? votes;
  bool? showVotesCount;

  Predictions(
      {this.iD,
      this.lineTypeID,
      this.votingKey,
      this.votes,
      this.showVotesCount});

  Predictions.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    lineTypeID = json['LineTypeID'];
    votingKey = json['VotingKey'];
    votes = json['Votes'].cast<int>();
    showVotesCount = json['ShowVotesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['LineTypeID'] = lineTypeID;
    data['VotingKey'] = votingKey;
    data['Votes'] = votes;
    data['ShowVotesCount'] = showVotesCount;
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

class Statistics {
  int? type;
  List<String>? vals;
  List<double>? valsPct;

  Statistics({this.type, this.vals, this.valsPct});

  Statistics.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    vals = json['Vals'].cast<String>();
    valsPct = json['ValsPct'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Type'] = type;
    data['Vals'] = vals;
    data['ValsPct'] = valsPct;
    return data;
  }
}

class News {
  List<NewsSources>? newsSources;
  List<Items>? items;
  Paging? paging;
  int? lastUpdateID;

  News({this.newsSources, this.items, this.paging, this.lastUpdateID});

  News.fromJson(Map<String, dynamic> json) {
    if (json['NewsSources'] != null) {
      newsSources = <NewsSources>[];
      json['NewsSources'].forEach((v) {
        newsSources!.add(NewsSources.fromJson(v));
      });
    }
    if (json['Items'] != null) {
      items = <Items>[];
      json['Items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    paging = json['Paging'] != null ? Paging.fromJson(json['Paging']) : null;
    lastUpdateID = json['LastUpdateID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (newsSources != null) {
      data['NewsSources'] = newsSources!.map((v) => v.toJson()).toList();
    }
    if (items != null) {
      data['Items'] = items!.map((v) => v.toJson()).toList();
    }
    if (paging != null) {
      data['Paging'] = paging!.toJson();
    }
    data['LastUpdateID'] = lastUpdateID;
    return data;
  }
}

class NewsSources {
  int? iD;
  String? name;
  String? description;
  String? uRL;
  int? lang;
  int? countryID;
  String? logoUrl;
  bool? skipReadability;
  int? imgVer;

  NewsSources(
      {this.iD,
      this.name,
      this.description,
      this.uRL,
      this.lang,
      this.countryID,
      this.logoUrl,
      this.skipReadability,
      this.imgVer});

  NewsSources.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    description = json['Description'];
    uRL = json['URL'];
    lang = json['Lang'];
    countryID = json['CountryID'];
    logoUrl = json['LogoUrl'];
    skipReadability = json['SkipReadability'];
    imgVer = json['ImgVer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['Description'] = description;
    data['URL'] = uRL;
    data['Lang'] = lang;
    data['CountryID'] = countryID;
    data['LogoUrl'] = logoUrl;
    data['SkipReadability'] = skipReadability;
    data['ImgVer'] = imgVer;
    return data;
  }
}

class Items {
  int? iD;
  int? sourceID;
  int? type;
  String? title;
  String? description;
  String? url;
  String? publishTime;
  int? langID;
  String? author;
  bool? hasVideo;
  String? imageSource;
  int? imageHeight;
  int? imageWidth;
  int? layout;
  bool? skipDetails;
  List<EntitiesConnection>? entitiesConnection;
  List<Images>? images;
  SocialStats? socialStats;
  List<int>? related;

  Items(
      {this.iD,
      this.sourceID,
      this.type,
      this.title,
      this.description,
      this.url,
      this.publishTime,
      this.langID,
      this.author,
      this.hasVideo,
      this.imageSource,
      this.imageHeight,
      this.imageWidth,
      this.layout,
      this.skipDetails,
      this.entitiesConnection,
      this.images,
      this.socialStats,
      this.related});

  Items.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    sourceID = json['SourceID'];
    type = json['Type'];
    title = json['Title'];
    description = json['Description'];
    url = json['Url'];
    publishTime = json['PublishTime'];
    langID = json['LangID'];
    author = json['Author'];
    hasVideo = json['HasVideo'];
    imageSource = json['ImageSource'];
    imageHeight = json['ImageHeight'];
    imageWidth = json['ImageWidth'];
    layout = json['Layout'];
    skipDetails = json['SkipDetails'];
    if (json['EntitiesConnection'] != null) {
      entitiesConnection = <EntitiesConnection>[];
      json['EntitiesConnection'].forEach((v) {
        entitiesConnection!.add(EntitiesConnection.fromJson(v));
      });
    }
    if (json['Images'] != null) {
      images = <Images>[];
      json['Images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    socialStats = json['SocialStats'] != null
        ? SocialStats.fromJson(json['SocialStats'])
        : null;
    related = json['Related'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['SourceID'] = sourceID;
    data['Type'] = type;
    data['Title'] = title;
    data['Description'] = description;
    data['Url'] = url;
    data['PublishTime'] = publishTime;
    data['LangID'] = langID;
    data['Author'] = author;
    data['HasVideo'] = hasVideo;
    data['ImageSource'] = imageSource;
    data['ImageHeight'] = imageHeight;
    data['ImageWidth'] = imageWidth;
    data['Layout'] = layout;
    data['SkipDetails'] = skipDetails;
    if (entitiesConnection != null) {
      data['EntitiesConnection'] =
          entitiesConnection!.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      data['Images'] = images!.map((v) => v.toJson()).toList();
    }
    if (socialStats != null) {
      data['SocialStats'] = socialStats!.toJson();
    }
    data['Related'] = related;
    return data;
  }
}

class EntitiesConnection {
  int? entityType;
  int? entityID;

  EntitiesConnection({this.entityType, this.entityID});

  EntitiesConnection.fromJson(Map<String, dynamic> json) {
    entityType = json['EntityType'];
    entityID = json['EntityID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['EntityType'] = entityType;
    data['EntityID'] = entityID;
    return data;
  }
}

class Images {
  String? uRL;
  int? height;
  int? width;
  String? signHash;

  Images({this.uRL, this.height, this.width, this.signHash});

  Images.fromJson(Map<String, dynamic> json) {
    uRL = json['URL'];
    height = json['Height'];
    width = json['Width'];
    signHash = json['SignHash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['URL'] = uRL;
    data['Height'] = height;
    data['Width'] = width;
    data['SignHash'] = signHash;
    return data;
  }
}

class SocialStats {
  int? comments;
  int? likes;
  int? shares;

  SocialStats({this.comments, this.likes, this.shares});

  SocialStats.fromJson(Map<String, dynamic> json) {
    comments = json['Comments'];
    likes = json['Likes'];
    shares = json['Shares'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Comments'] = comments;
    data['Likes'] = likes;
    data['Shares'] = shares;
    return data;
  }
}

class Paging {
  String? basePage;
  String? nextPage;
  String? refreshPage;
  String? updatesPage;

  Paging({this.basePage, this.nextPage, this.refreshPage, this.updatesPage});

  Paging.fromJson(Map<String, dynamic> json) {
    basePage = json['BasePage'];
    nextPage = json['NextPage'];
    refreshPage = json['RefreshPage'];
    updatesPage = json['UpdatesPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BasePage'] = basePage;
    data['NextPage'] = nextPage;
    data['RefreshPage'] = refreshPage;
    data['UpdatesPage'] = updatesPage;
    return data;
  }
}

class BuzzItems {
  int? iD;
  int? sourceID;
  int? type;
  String? title;
  String? description;
  String? externalID;
  String? url;
  String? publishTime;
  int? langID;
  String? author;
  Images? authorImage;
  bool? displayAuthor;
  bool? hasVideo;
  String? imageSource;
  int? imageHeight;
  int? imageWidth;
  int? layout;
  bool? skipDetails;
  bool? requireDisclaimer;
  String? disclaimerType;
  List<EntitiesConnection>? entitiesConnection;
  List<Videos>? videos;
  List<Images>? images;
  SocialStats? socialStats;
  List<int>? related;

  BuzzItems(
      {this.iD,
      this.sourceID,
      this.type,
      this.title,
      this.description,
      this.externalID,
      this.url,
      this.publishTime,
      this.langID,
      this.author,
      this.authorImage,
      this.displayAuthor,
      this.hasVideo,
      this.imageSource,
      this.imageHeight,
      this.imageWidth,
      this.layout,
      this.skipDetails,
      this.requireDisclaimer,
      this.disclaimerType,
      this.entitiesConnection,
      this.videos,
      this.images,
      this.socialStats,
      this.related});

  BuzzItems.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    sourceID = json['SourceID'];
    type = json['Type'];
    title = json['Title'];
    description = json['Description'];
    externalID = json['ExternalID'];
    url = json['Url'];
    publishTime = json['PublishTime'];
    langID = json['LangID'];
    author = json['Author'];
    authorImage = json['AuthorImage'] != null
        ? Images.fromJson(json['AuthorImage'])
        : null;
    displayAuthor = json['DisplayAuthor'];
    hasVideo = json['HasVideo'];
    imageSource = json['ImageSource'];
    imageHeight = json['ImageHeight'];
    imageWidth = json['ImageWidth'];
    layout = json['Layout'];
    skipDetails = json['SkipDetails'];
    requireDisclaimer = json['RequireDisclaimer'];
    disclaimerType = json['DisclaimerType'];
    if (json['EntitiesConnection'] != null) {
      entitiesConnection = <EntitiesConnection>[];
      json['EntitiesConnection'].forEach((v) {
        entitiesConnection!.add(EntitiesConnection.fromJson(v));
      });
    }
    if (json['Videos'] != null) {
      videos = <Videos>[];
      json['Videos'].forEach((v) {
        videos!.add(Videos.fromJson(v));
      });
    }
    if (json['Images'] != null) {
      images = <Images>[];
      json['Images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    socialStats = json['SocialStats'] != null
        ? SocialStats.fromJson(json['SocialStats'])
        : null;
    related = json['Related'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['SourceID'] = sourceID;
    data['Type'] = type;
    data['Title'] = title;
    data['Description'] = description;
    data['ExternalID'] = externalID;
    data['Url'] = url;
    data['PublishTime'] = publishTime;
    data['LangID'] = langID;
    data['Author'] = author;
    if (authorImage != null) {
      data['AuthorImage'] = authorImage!.toJson();
    }
    data['DisplayAuthor'] = displayAuthor;
    data['HasVideo'] = hasVideo;
    data['ImageSource'] = imageSource;
    data['ImageHeight'] = imageHeight;
    data['ImageWidth'] = imageWidth;
    data['Layout'] = layout;
    data['SkipDetails'] = skipDetails;
    data['RequireDisclaimer'] = requireDisclaimer;
    data['DisclaimerType'] = disclaimerType;
    if (entitiesConnection != null) {
      data['EntitiesConnection'] =
          entitiesConnection!.map((v) => v.toJson()).toList();
    }
    if (videos != null) {
      data['Videos'] = videos!.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      data['Images'] = images!.map((v) => v.toJson()).toList();
    }
    if (socialStats != null) {
      data['SocialStats'] = socialStats!.toJson();
    }
    data['Related'] = related;
    return data;
  }
}

class Videos {
  String? uRL;
  String? vID;
  int? src;
  String? thumbnail;
  bool? requireDisclaimer;
  bool? licensed;
  int? duration;
  bool? directMediaLink;
  String? contentType;
  int? width;
  int? height;

  Videos(
      {this.uRL,
      this.vID,
      this.src,
      this.thumbnail,
      this.requireDisclaimer,
      this.licensed,
      this.duration,
      this.directMediaLink,
      this.contentType,
      this.width,
      this.height});

  Videos.fromJson(Map<String, dynamic> json) {
    uRL = json['URL'];
    vID = json['VID'];
    src = json['Src'];
    thumbnail = json['Thumbnail'];
    requireDisclaimer = json['RequireDisclaimer'];
    licensed = json['Licensed'];
    duration = json['Duration'];
    directMediaLink = json['DirectMediaLink'];
    contentType = json['ContentType'];
    width = json['Width'];
    height = json['Height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['URL'] = uRL;
    data['VID'] = vID;
    data['Src'] = src;
    data['Thumbnail'] = thumbnail;
    data['RequireDisclaimer'] = requireDisclaimer;
    data['Licensed'] = licensed;
    data['Duration'] = duration;
    data['DirectMediaLink'] = directMediaLink;
    data['ContentType'] = contentType;
    data['Width'] = width;
    data['Height'] = height;
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

class LastMatchesNew {
  int? sID;
  int? iD;
  int? comp;
  String? sTime;
  int? season;
  int? stage;
  int? group;
  List<Comps>? comps;
  int? sTID;
  List<int>? scrs;
  int? winner;
  bool? neutralVenue;
  int? toQualify;
  int? homeAwayTeamOrder;
  int? surface;

  LastMatchesNew(
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

  LastMatchesNew.fromJson(Map<String, dynamic> json) {
    sID = json['SID'];
    iD = json['ID'];
    comp = json['Comp'];
    sTime = json['STime'];
    season = json['Season'];
    stage = json['Stage'];
    group = json['Group'];
    if (json['Comps'] != null) {
      comps = <Comps>[];
      json['Comps'].forEach((v) {
        comps!.add(Comps.fromJson(v));
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

class TrendingItems {
  int? newsItemID;
  int? type;
  String? time;
  String? title;
  String? image;

  TrendingItems(
      {this.newsItemID, this.type, this.time, this.title, this.image});

  TrendingItems.fromJson(Map<String, dynamic> json) {
    newsItemID = json['NewsItemID'];
    type = json['Type'];
    time = json['Time'];
    title = json['Title'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['NewsItemID'] = newsItemID;
    data['Type'] = type;
    data['Time'] = time;
    data['Title'] = title;
    data['Image'] = image;
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
  bool? hasLogo;
  bool? hasTexture;
  String? textColor;
  int? imgVer;
  int? competitorsType;
  int? popularityRank;
  String? color;

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
      this.hasLogo,
      this.hasTexture,
      this.textColor,
      this.imgVer,
      this.competitorsType,
      this.popularityRank,
      this.color});

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
    hasLogo = json['HasLogo'];
    hasTexture = json['HasTexture'];
    textColor = json['TextColor'];
    imgVer = json['ImgVer'];
    competitorsType = json['CompetitorsType'];
    popularityRank = json['PopularityRank'];
    color = json['Color'];
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
    data['HasLogo'] = hasLogo;
    data['HasTexture'] = hasTexture;
    data['TextColor'] = textColor;
    data['ImgVer'] = imgVer;
    data['CompetitorsType'] = competitorsType;
    data['PopularityRank'] = popularityRank;
    data['Color'] = color;
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
  bool? connectedToNextStage;
  int? gamesCount;
  int? liveCount;

  Stages(
      {this.num,
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
    connectedToNextStage = json['ConnectedToNextStage'];
    gamesCount = json['GamesCount'];
    liveCount = json['LiveCount'];
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
    data['ConnectedToNextStage'] = connectedToNextStage;
    data['GamesCount'] = gamesCount;
    data['LiveCount'] = liveCount;
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
      this.homeAwayTeamOrder});

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
  LastMatches? game;
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
    game = json['Game'] != null ? LastMatches.fromJson(json['Game']) : null;
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
