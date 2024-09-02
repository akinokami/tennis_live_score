class AppSetting {
  int? defaultLangId;
  int? defaultTimeZoneId;
  int? defaultUserCountryID;
  bool? loginAvailable;
  List<Languages>? languages;
  List<TimeZones>? timeZones;
  List<Terms>? terms;
  List<SportTypes>? sportTypes;
  LogoSources? logoSources;
  ImageSources? imageSources;
  CurrTime? currTime;
  String? chatDomain;

  AppSetting(
      {this.defaultLangId,
      this.defaultTimeZoneId,
      this.defaultUserCountryID,
      this.loginAvailable,
      this.languages,
      this.timeZones,
      this.terms,
      this.sportTypes,
      this.logoSources,
      this.imageSources,
      this.currTime,
      this.chatDomain});

  AppSetting.fromJson(Map<String, dynamic> json) {
    defaultLangId = json['DefaultLangId'];
    defaultTimeZoneId = json['DefaultTimeZoneId'];
    defaultUserCountryID = json['DefaultUserCountryID'];
    loginAvailable = json['LoginAvailable'];
    if (json['Languages'] != null) {
      languages = <Languages>[];
      json['Languages'].forEach((v) {
        languages!.add(Languages.fromJson(v));
      });
    }
    if (json['TimeZones'] != null) {
      timeZones = <TimeZones>[];
      json['TimeZones'].forEach((v) {
        timeZones!.add(TimeZones.fromJson(v));
      });
    }
    if (json['Terms'] != null) {
      terms = <Terms>[];
      json['Terms'].forEach((v) {
        terms!.add(Terms.fromJson(v));
      });
    }
    if (json['SportTypes'] != null) {
      sportTypes = <SportTypes>[];
      json['SportTypes'].forEach((v) {
        sportTypes!.add(SportTypes.fromJson(v));
      });
    }

    logoSources = json['LogoSources'] != null
        ? LogoSources.fromJson(json['LogoSources'])
        : null;
    imageSources = json['ImageSources'] != null
        ? ImageSources.fromJson(json['ImageSources'])
        : null;

    currTime =
        json['CurrTime'] != null ? CurrTime.fromJson(json['CurrTime']) : null;
    chatDomain = json['ChatDomain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DefaultLangId'] = defaultLangId;
    data['DefaultTimeZoneId'] = defaultTimeZoneId;
    data['DefaultUserCountryID'] = defaultUserCountryID;
    data['LoginAvailable'] = loginAvailable;
    if (languages != null) {
      data['Languages'] = languages!.map((v) => v.toJson()).toList();
    }
    if (timeZones != null) {
      data['TimeZones'] = timeZones!.map((v) => v.toJson()).toList();
    }
    if (terms != null) {
      data['Terms'] = terms!.map((v) => v.toJson()).toList();
    }
    if (sportTypes != null) {
      data['SportTypes'] = sportTypes!.map((v) => v.toJson()).toList();
    }

    if (logoSources != null) {
      data['LogoSources'] = logoSources!.toJson();
    }
    if (imageSources != null) {
      data['ImageSources'] = imageSources!.toJson();
    }

    if (currTime != null) {
      data['CurrTime'] = currTime!.toJson();
    }
    data['ChatDomain'] = chatDomain;
    return data;
  }
}

class Languages {
  String? name;
  int? iD;
  String? direction;
  String? cultureName;
  String? fBCode;
  String? androidLocale;
  int? imgVer;
  String? didomiCode;
  String? websiteLang;
  int? fatherLang;

  Languages(
      {this.name,
      this.iD,
      this.direction,
      this.cultureName,
      this.fBCode,
      this.androidLocale,
      this.imgVer,
      this.didomiCode,
      this.websiteLang,
      this.fatherLang});

  Languages.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    iD = json['ID'];
    direction = json['Direction'];
    cultureName = json['CultureName'];
    fBCode = json['FB_Code'];
    androidLocale = json['AndroidLocale'];
    imgVer = json['ImgVer'];
    didomiCode = json['DidomiCode'];
    websiteLang = json['WebsiteLang'];
    fatherLang = json['FatherLang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['ID'] = iD;
    data['Direction'] = direction;
    data['CultureName'] = cultureName;
    data['FB_Code'] = fBCode;
    data['AndroidLocale'] = androidLocale;
    data['ImgVer'] = imgVer;
    data['DidomiCode'] = didomiCode;
    data['WebsiteLang'] = websiteLang;
    data['FatherLang'] = fatherLang;
    return data;
  }
}

class TimeZones {
  int? iD;
  String? name;

  TimeZones({this.iD, this.name});

  TimeZones.fromJson(Map<String, dynamic> json) {
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

class Terms {
  String? aliasName;
  String? name;

  Terms({this.aliasName, this.name});

  Terms.fromJson(Map<String, dynamic> json) {
    aliasName = json['AliasName'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['AliasName'] = aliasName;
    data['Name'] = name;
    return data;
  }
}

class SportTypes {
  int? iD;
  String? name;
  String? shortName;
  String? nameForURL;
  String? willNotPlayTitle;
  String? doubtfulTitle;
  List<Statuses>? statuses;
  List<Stages>? stages;
  int? currResultStage;
  List<EventTypes>? eventTypes;
  // List<VarEventTypes>? varEventTypes;
  List<StatisticTypes>? statisticTypes;
  List<StatisticCategories>? statisticCategories;
  List<AthletsStatisticTypes>? athletsStatisticTypes;
  List<CompetitorStatisticTypes>? competitorStatisticTypes;
  List<AthletsStatisticCategories>? athletsStatisticCategories;
  List<Positions>? positions;
  List<FormationPositions>? formationPositions;
  int? clockDirection;
  int? orderLevel;
  int? eventsCategories;
  bool? tieSupported;
  bool? hasInternationalClubs;
  bool? hasInternationalNations;
  double? gameTimeTolerance;
  int? imgVer;
  int? defaultCompetitorType;
  // List<SurfaceTypes>? surfaceTypes;
  bool? showEventsOrderFromBottom;
  //List<CricketPlayingStatuses>? cricketPlayingStatuses;

  SportTypes({
    this.iD,
    this.name,
    this.shortName,
    this.nameForURL,
    this.willNotPlayTitle,
    this.doubtfulTitle,
    this.statuses,
    this.stages,
    this.currResultStage,
    this.eventTypes,
    // this.varEventTypes,
    this.statisticTypes,
    this.statisticCategories,
    this.athletsStatisticTypes,
    this.competitorStatisticTypes,
    this.athletsStatisticCategories,
    this.positions,
    this.formationPositions,
    this.clockDirection,
    this.orderLevel,
    this.eventsCategories,
    this.tieSupported,
    this.hasInternationalClubs,
    this.hasInternationalNations,
    this.gameTimeTolerance,
    this.imgVer,
    this.defaultCompetitorType,
    // this.surfaceTypes,
    this.showEventsOrderFromBottom,
    // this.cricketPlayingStatuses
  });

  SportTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    shortName = json['ShortName'];
    nameForURL = json['NameForURL'];
    willNotPlayTitle = json['WillNotPlayTitle'];
    doubtfulTitle = json['DoubtfulTitle'];
    if (json['Statuses'] != null) {
      statuses = <Statuses>[];
      json['Statuses'].forEach((v) {
        statuses!.add(Statuses.fromJson(v));
      });
    }
    if (json['Stages'] != null) {
      stages = <Stages>[];
      json['Stages'].forEach((v) {
        stages!.add(Stages.fromJson(v));
      });
    }
    currResultStage = json['CurrResultStage'];
    if (json['EventTypes'] != null) {
      eventTypes = <EventTypes>[];
      json['EventTypes'].forEach((v) {
        eventTypes!.add(EventTypes.fromJson(v));
      });
    }
    // if (json['VarEventTypes'] != null) {
    //   varEventTypes = <VarEventTypes>[];
    //   json['VarEventTypes'].forEach((v) {
    //     varEventTypes!.add(VarEventTypes.fromJson(v));
    //   });
    // }
    if (json['StatisticTypes'] != null) {
      statisticTypes = <StatisticTypes>[];
      json['StatisticTypes'].forEach((v) {
        statisticTypes!.add(StatisticTypes.fromJson(v));
      });
    }
    if (json['StatisticCategories'] != null) {
      statisticCategories = <StatisticCategories>[];
      json['StatisticCategories'].forEach((v) {
        statisticCategories!.add(StatisticCategories.fromJson(v));
      });
    }
    if (json['AthletsStatisticTypes'] != null) {
      athletsStatisticTypes = <AthletsStatisticTypes>[];
      json['AthletsStatisticTypes'].forEach((v) {
        athletsStatisticTypes!.add(AthletsStatisticTypes.fromJson(v));
      });
    }
    if (json['CompetitorStatisticTypes'] != null) {
      competitorStatisticTypes = <CompetitorStatisticTypes>[];
      json['CompetitorStatisticTypes'].forEach((v) {
        competitorStatisticTypes!.add(CompetitorStatisticTypes.fromJson(v));
      });
    }
    if (json['AthletsStatisticCategories'] != null) {
      athletsStatisticCategories = <AthletsStatisticCategories>[];
      json['AthletsStatisticCategories'].forEach((v) {
        athletsStatisticCategories!.add(AthletsStatisticCategories.fromJson(v));
      });
    }
    if (json['Positions'] != null) {
      positions = <Positions>[];
      json['Positions'].forEach((v) {
        positions!.add(Positions.fromJson(v));
      });
    }
    if (json['FormationPositions'] != null) {
      formationPositions = <FormationPositions>[];
      json['FormationPositions'].forEach((v) {
        formationPositions!.add(FormationPositions.fromJson(v));
      });
    }
    clockDirection = json['ClockDirection'];
    orderLevel = json['OrderLevel'];
    eventsCategories = json['EventsCategories'];
    tieSupported = json['TieSupported'];
    hasInternationalClubs = json['HasInternationalClubs'];
    hasInternationalNations = json['HasInternationalNations'];
    gameTimeTolerance = json['GameTimeTolerance'];
    imgVer = json['ImgVer'];
    defaultCompetitorType = json['DefaultCompetitorType'];
    // if (json['SurfaceTypes'] != null) {
    //   surfaceTypes = <SurfaceTypes>[];
    //   json['SurfaceTypes'].forEach((v) {
    //     surfaceTypes!.add(SurfaceTypes.fromJson(v));
    //   });
    // }
    showEventsOrderFromBottom = json['ShowEventsOrderFromBottom'];
    // if (json['CricketPlayingStatuses'] != null) {
    //   cricketPlayingStatuses = <CricketPlayingStatuses>[];
    //   json['CricketPlayingStatuses'].forEach((v) {
    //     cricketPlayingStatuses!.add(CricketPlayingStatuses.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['ShortName'] = shortName;
    data['NameForURL'] = nameForURL;
    data['WillNotPlayTitle'] = willNotPlayTitle;
    data['DoubtfulTitle'] = doubtfulTitle;
    if (statuses != null) {
      data['Statuses'] = statuses!.map((v) => v.toJson()).toList();
    }
    if (stages != null) {
      data['Stages'] = stages!.map((v) => v.toJson()).toList();
    }
    data['CurrResultStage'] = currResultStage;
    if (eventTypes != null) {
      data['EventTypes'] = eventTypes!.map((v) => v.toJson()).toList();
    }
    // if (varEventTypes != null) {
    //   data['VarEventTypes'] =
    //       varEventTypes!.map((v) => v.toJson()).toList();
    // }
    if (statisticTypes != null) {
      data['StatisticTypes'] = statisticTypes!.map((v) => v.toJson()).toList();
    }
    if (statisticCategories != null) {
      data['StatisticCategories'] =
          statisticCategories!.map((v) => v.toJson()).toList();
    }
    if (athletsStatisticTypes != null) {
      data['AthletsStatisticTypes'] =
          athletsStatisticTypes!.map((v) => v.toJson()).toList();
    }
    if (competitorStatisticTypes != null) {
      data['CompetitorStatisticTypes'] =
          competitorStatisticTypes!.map((v) => v.toJson()).toList();
    }
    if (athletsStatisticCategories != null) {
      data['AthletsStatisticCategories'] =
          athletsStatisticCategories!.map((v) => v.toJson()).toList();
    }
    if (positions != null) {
      data['Positions'] = positions!.map((v) => v.toJson()).toList();
    }
    if (formationPositions != null) {
      data['FormationPositions'] =
          formationPositions!.map((v) => v.toJson()).toList();
    }
    data['ClockDirection'] = clockDirection;
    data['OrderLevel'] = orderLevel;
    data['EventsCategories'] = eventsCategories;
    data['TieSupported'] = tieSupported;
    data['HasInternationalClubs'] = hasInternationalClubs;
    data['HasInternationalNations'] = hasInternationalNations;
    data['GameTimeTolerance'] = gameTimeTolerance;
    data['ImgVer'] = imgVer;
    data['DefaultCompetitorType'] = defaultCompetitorType;
    // if (surfaceTypes != null) {
    //   data['SurfaceTypes'] = surfaceTypes!.map((v) => v.toJson()).toList();
    // }
    data['ShowEventsOrderFromBottom'] = showEventsOrderFromBottom;
    // if (cricketPlayingStatuses != null) {
    //   data['CricketPlayingStatuses'] =
    //       cricketPlayingStatuses!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Statuses {
  int? iD;
  String? name;
  String? shortName;
  String? symbolName;
  String? aliasName;
  int? sportTypeID;
  bool? isActive;
  bool? isFinished;
  bool? isNotStarted;
  bool? isExtraTime;
  bool? isPenalties;
  bool? isAbnormal;
  bool? hasGameTime;
  bool? gameTimeForStatus;
  bool? hasEvents;
  bool? showGameIsAboutToStartUponCountdownZero;
  int? gameTimeOnStart;
  int? gameTimeOnFinish;
  double? progressPace;
  bool? isClockAutomaticallyprogress;
  int? scoreStage;
  String? nextStageIsAboutToStartDescription;
  bool? autonomicTime;
  bool? showStartTime;

  Statuses(
      {this.iD,
      this.name,
      this.shortName,
      this.symbolName,
      this.aliasName,
      this.sportTypeID,
      this.isActive,
      this.isFinished,
      this.isNotStarted,
      this.isExtraTime,
      this.isPenalties,
      this.isAbnormal,
      this.hasGameTime,
      this.gameTimeForStatus,
      this.hasEvents,
      this.showGameIsAboutToStartUponCountdownZero,
      this.gameTimeOnStart,
      this.gameTimeOnFinish,
      this.progressPace,
      this.isClockAutomaticallyprogress,
      this.scoreStage,
      this.nextStageIsAboutToStartDescription,
      this.autonomicTime,
      this.showStartTime});

  Statuses.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    shortName = json['ShortName'];
    symbolName = json['SymbolName'];
    aliasName = json['AliasName'];
    sportTypeID = json['SportTypeID'];
    isActive = json['isActive'];
    isFinished = json['isFinished'];
    isNotStarted = json['isNotStarted'];
    isExtraTime = json['isExtraTime'];
    isPenalties = json['isPenalties'];
    isAbnormal = json['isAbnormal'];
    hasGameTime = json['HasGameTime'];
    gameTimeForStatus = json['GameTimeForStatus'];
    hasEvents = json['HasEvents'];
    showGameIsAboutToStartUponCountdownZero =
        json['ShowGameIsAboutToStartUponCountdownZero'];
    gameTimeOnStart = json['GameTimeOnStart'];
    gameTimeOnFinish = json['GameTimeOnFinish'];
    progressPace = json['ProgressPace'];
    isClockAutomaticallyprogress = json['IsClockAutomaticallyprogress'];
    scoreStage = json['ScoreStage'];
    nextStageIsAboutToStartDescription =
        json['NextStageIsAboutToStartDescription'];
    autonomicTime = json['AutonomicTime'];
    showStartTime = json['ShowStartTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['ShortName'] = shortName;
    data['SymbolName'] = symbolName;
    data['AliasName'] = aliasName;
    data['SportTypeID'] = sportTypeID;
    data['isActive'] = isActive;
    data['isFinished'] = isFinished;
    data['isNotStarted'] = isNotStarted;
    data['isExtraTime'] = isExtraTime;
    data['isPenalties'] = isPenalties;
    data['isAbnormal'] = isAbnormal;
    data['HasGameTime'] = hasGameTime;
    data['GameTimeForStatus'] = gameTimeForStatus;
    data['HasEvents'] = hasEvents;
    data['ShowGameIsAboutToStartUponCountdownZero'] =
        showGameIsAboutToStartUponCountdownZero;
    data['GameTimeOnStart'] = gameTimeOnStart;
    data['GameTimeOnFinish'] = gameTimeOnFinish;
    data['ProgressPace'] = progressPace;
    data['IsClockAutomaticallyprogress'] = isClockAutomaticallyprogress;
    data['ScoreStage'] = scoreStage;
    data['NextStageIsAboutToStartDescription'] =
        nextStageIsAboutToStartDescription;
    data['AutonomicTime'] = autonomicTime;
    data['ShowStartTime'] = showStartTime;
    return data;
  }
}

class Stages {
  int? iD;
  String? name;
  String? shortName;
  String? aliasName;
  int? sportTypeID;
  bool? main;
  bool? isExtraTime;
  bool? isPenalties;
  bool? optional;

  Stages(
      {this.iD,
      this.name,
      this.shortName,
      this.aliasName,
      this.sportTypeID,
      this.main,
      this.isExtraTime,
      this.isPenalties,
      this.optional});

  Stages.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    shortName = json['ShortName'];
    aliasName = json['AliasName'];
    sportTypeID = json['SportTypeID'];
    main = json['Main'];
    isExtraTime = json['isExtraTime'];
    isPenalties = json['isPenalties'];
    optional = json['Optional'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['ShortName'] = shortName;
    data['AliasName'] = aliasName;
    data['SportTypeID'] = sportTypeID;
    data['Main'] = main;
    data['isExtraTime'] = isExtraTime;
    data['isPenalties'] = isPenalties;
    data['Optional'] = optional;
    return data;
  }
}

class EventTypes {
  int? iD;
  String? name;
  List<SubTypes>? subTypes;
  int? sportTypeID;
  bool? major;
  bool? isScoring;
  int? imgVer;
  List<Params>? params;
  String? textTemplate;
  List<Outcomes>? outcomes;
  String? extraDetailsTemplate;

  EventTypes(
      {this.iD,
      this.name,
      this.subTypes,
      this.sportTypeID,
      this.major,
      this.isScoring,
      this.imgVer,
      this.params,
      this.textTemplate,
      this.outcomes,
      this.extraDetailsTemplate});

  EventTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    if (json['SubTypes'] != null) {
      subTypes = <SubTypes>[];
      json['SubTypes'].forEach((v) {
        subTypes!.add(SubTypes.fromJson(v));
      });
    }
    sportTypeID = json['SportTypeID'];
    major = json['Major'];
    isScoring = json['IsScoring'];
    imgVer = json['ImgVer'];
    if (json['Params'] != null) {
      params = <Params>[];
      json['Params'].forEach((v) {
        params!.add(Params.fromJson(v));
      });
    }
    textTemplate = json['TextTemplate'];
    if (json['Outcomes'] != null) {
      outcomes = <Outcomes>[];
      json['Outcomes'].forEach((v) {
        outcomes!.add(Outcomes.fromJson(v));
      });
    }
    extraDetailsTemplate = json['ExtraDetailsTemplate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    if (subTypes != null) {
      data['SubTypes'] = subTypes!.map((v) => v.toJson()).toList();
    }
    data['SportTypeID'] = sportTypeID;
    data['Major'] = major;
    data['IsScoring'] = isScoring;
    data['ImgVer'] = imgVer;
    if (params != null) {
      data['Params'] = params!.map((v) => v.toJson()).toList();
    }
    data['TextTemplate'] = textTemplate;
    if (outcomes != null) {
      data['Outcomes'] = outcomes!.map((v) => v.toJson()).toList();
    }
    data['ExtraDetailsTemplate'] = extraDetailsTemplate;
    return data;
  }
}

class SubTypes {
  int? iD;
  String? aliasName;
  String? name;
  String? sName;
  String? textTemplate;

  SubTypes({this.iD, this.aliasName, this.name, this.sName, this.textTemplate});

  SubTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    aliasName = json['AliasName'];
    name = json['Name'];
    sName = json['SName'];
    textTemplate = json['TextTemplate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['AliasName'] = aliasName;
    data['Name'] = name;
    data['SName'] = sName;
    data['TextTemplate'] = textTemplate;
    return data;
  }
}

class Params {
  int? num;
  String? name;
  int? nameTermId;
  String? aliasName;
  String? paramType;
  String? dependsOn;

  Params(
      {this.num,
      this.name,
      this.nameTermId,
      this.aliasName,
      this.paramType,
      this.dependsOn});

  Params.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    name = json['Name'];
    nameTermId = json['NameTermId'];
    aliasName = json['AliasName'];
    paramType = json['ParamType'];
    dependsOn = json['DependsOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['NameTermId'] = nameTermId;
    data['AliasName'] = aliasName;
    data['ParamType'] = paramType;
    data['DependsOn'] = dependsOn;
    return data;
  }
}

class Outcomes {
  int? iD;
  String? name;
  String? textTemplate;

  Outcomes({this.iD, this.name, this.textTemplate});

  Outcomes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    textTemplate = json['TextTemplate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['TextTemplate'] = textTemplate;
    return data;
  }
}

class StatisticTypes {
  int? iD;
  String? name;
  int? category;
  bool? visible;
  int? order;
  int? personalStatsOrder;
  bool? isExtendedStats;
  bool? topPlayerStat;
  int? imageId;
  bool? isGraphic;
  int? subCategory;
  bool? major;
  bool? primary;
  int? father;
  String? sName;
  String? description;
  bool? hideStatName;
  List<PossibleValues>? possibleValues;
  bool? extra;

  StatisticTypes(
      {this.iD,
      this.name,
      this.category,
      this.visible,
      this.order,
      this.personalStatsOrder,
      this.isExtendedStats,
      this.topPlayerStat,
      this.imageId,
      this.isGraphic,
      this.subCategory,
      this.major,
      this.primary,
      this.father,
      this.sName,
      this.description,
      this.hideStatName,
      this.possibleValues,
      this.extra});

  StatisticTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    category = json['Category'];
    visible = json['Visible'];
    order = json['Order'];
    personalStatsOrder = json['PersonalStatsOrder'];
    isExtendedStats = json['IsExtendedStats'];
    topPlayerStat = json['TopPlayerStat'];
    imageId = json['ImageId'];
    isGraphic = json['IsGraphic'];
    subCategory = json['SubCategory'];
    major = json['Major'];
    primary = json['Primary'];
    father = json['Father'];
    sName = json['SName'];
    description = json['Description'];
    hideStatName = json['HideStatName'];
    if (json['PossibleValues'] != null) {
      possibleValues = <PossibleValues>[];
      json['PossibleValues'].forEach((v) {
        possibleValues!.add(PossibleValues.fromJson(v));
      });
    }
    extra = json['Extra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['Category'] = category;
    data['Visible'] = visible;
    data['Order'] = order;
    data['PersonalStatsOrder'] = personalStatsOrder;
    data['IsExtendedStats'] = isExtendedStats;
    data['TopPlayerStat'] = topPlayerStat;
    data['ImageId'] = imageId;
    data['IsGraphic'] = isGraphic;
    data['SubCategory'] = subCategory;
    data['Major'] = major;
    data['Primary'] = primary;
    data['Father'] = father;
    data['SName'] = sName;
    data['Description'] = description;
    data['HideStatName'] = hideStatName;
    if (possibleValues != null) {
      data['PossibleValues'] = possibleValues!.map((v) => v.toJson()).toList();
    }
    data['Extra'] = extra;
    return data;
  }
}

class PossibleValues {
  int? iD;
  int? value;
  String? name;

  PossibleValues({this.iD, this.value, this.name});

  PossibleValues.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    value = json['Value'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Value'] = value;
    data['Name'] = name;
    return data;
  }
}

class StatisticCategories {
  int? iD;
  String? name;
  int? orderLevel;
  List<OrderByPosition>? orderByPosition;
  //List<SubCategories>? subCategories;
  String? subject;
  String? sName;

  StatisticCategories(
      {this.iD,
      this.name,
      this.orderLevel,
      this.orderByPosition,
      // this.subCategories,
      this.subject,
      this.sName});

  StatisticCategories.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    orderLevel = json['OrderLevel'];
    if (json['OrderByPosition'] != null) {
      orderByPosition = <OrderByPosition>[];
      json['OrderByPosition'].forEach((v) {
        orderByPosition!.add(OrderByPosition.fromJson(v));
      });
    }
    // if (json['SubCategories'] != null) {
    //   subCategories = <SubCategories>[];
    //   json['SubCategories'].forEach((v) {
    //     subCategories!.add(SubCategories.fromJson(v));
    //   });
    // }
    subject = json['Subject'];
    sName = json['SName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['OrderLevel'] = orderLevel;
    if (orderByPosition != null) {
      data['OrderByPosition'] =
          orderByPosition!.map((v) => v.toJson()).toList();
    }
    // if (subCategories != null) {
    //   data['SubCategories'] = subCategories!.map((v) => v.toJson()).toList();
    // }
    data['Subject'] = subject;
    data['SName'] = sName;
    return data;
  }
}

class OrderByPosition {
  int? position;
  int? positionOrder;

  OrderByPosition({this.position, this.positionOrder});

  OrderByPosition.fromJson(Map<String, dynamic> json) {
    position = json['Position'];
    positionOrder = json['PositionOrder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Position'] = position;
    data['PositionOrder'] = positionOrder;
    return data;
  }
}

class AthletsStatisticTypes {
  int? iD;
  String? name;
  String? aliasName;
  int? category;
  bool? visible;
  int? order;
  int? personalStatsOrder;
  bool? isExtendedStats;
  bool? topPlayerStat;
  int? imageId;
  String? nameInMissingPlayers;
  int? imgVer;
  int? father;
  String? sName;
  String? description;

  AthletsStatisticTypes(
      {this.iD,
      this.name,
      this.aliasName,
      this.category,
      this.visible,
      this.order,
      this.personalStatsOrder,
      this.isExtendedStats,
      this.topPlayerStat,
      this.imageId,
      this.nameInMissingPlayers,
      this.imgVer,
      this.father,
      this.sName,
      this.description});

  AthletsStatisticTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    aliasName = json['AliasName'];
    category = json['Category'];
    visible = json['Visible'];
    order = json['Order'];
    personalStatsOrder = json['PersonalStatsOrder'];
    isExtendedStats = json['IsExtendedStats'];
    topPlayerStat = json['TopPlayerStat'];
    imageId = json['ImageId'];
    nameInMissingPlayers = json['NameInMissingPlayers'];
    imgVer = json['ImgVer'];
    father = json['Father'];
    sName = json['SName'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['AliasName'] = aliasName;
    data['Category'] = category;
    data['Visible'] = visible;
    data['Order'] = order;
    data['PersonalStatsOrder'] = personalStatsOrder;
    data['IsExtendedStats'] = isExtendedStats;
    data['TopPlayerStat'] = topPlayerStat;
    data['ImageId'] = imageId;
    data['NameInMissingPlayers'] = nameInMissingPlayers;
    data['ImgVer'] = imgVer;
    data['Father'] = father;
    data['SName'] = sName;
    data['Description'] = description;
    return data;
  }
}

class CompetitorStatisticTypes {
  int? iD;
  String? name;
  String? aliasName;
  int? category;
  bool? visible;
  int? order;
  int? personalStatsOrder;
  bool? isExtendedStats;
  bool? topPlayerStat;
  int? imageId;
  String? sName;

  CompetitorStatisticTypes(
      {this.iD,
      this.name,
      this.aliasName,
      this.category,
      this.visible,
      this.order,
      this.personalStatsOrder,
      this.isExtendedStats,
      this.topPlayerStat,
      this.imageId,
      this.sName});

  CompetitorStatisticTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    aliasName = json['AliasName'];
    category = json['Category'];
    visible = json['Visible'];
    order = json['Order'];
    personalStatsOrder = json['PersonalStatsOrder'];
    isExtendedStats = json['IsExtendedStats'];
    topPlayerStat = json['TopPlayerStat'];
    imageId = json['ImageId'];
    sName = json['SName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['AliasName'] = aliasName;
    data['Category'] = category;
    data['Visible'] = visible;
    data['Order'] = order;
    data['PersonalStatsOrder'] = personalStatsOrder;
    data['IsExtendedStats'] = isExtendedStats;
    data['TopPlayerStat'] = topPlayerStat;
    data['ImageId'] = imageId;
    data['SName'] = sName;
    return data;
  }
}

class AthletsStatisticCategories {
  int? iD;
  String? name;
  String? aliasName;

  AthletsStatisticCategories({this.iD, this.name, this.aliasName});

  AthletsStatisticCategories.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    aliasName = json['AliasName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['AliasName'] = aliasName;
    return data;
  }
}

class Positions {
  int? iD;
  String? aliasName;
  String? name;
  String? title;
  bool? isStaff;
  String? sName;

  Positions(
      {this.iD,
      this.aliasName,
      this.name,
      this.title,
      this.isStaff,
      this.sName});

  Positions.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    aliasName = json['AliasName'];
    name = json['Name'];
    title = json['Title'];
    isStaff = json['IsStaff'];
    sName = json['SName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['AliasName'] = aliasName;
    data['Name'] = name;
    data['Title'] = title;
    data['IsStaff'] = isStaff;
    data['SName'] = sName;
    return data;
  }
}

class FormationPositions {
  int? fatherPosition;
  int? iD;
  String? name;
  String? sName;

  FormationPositions({this.fatherPosition, this.iD, this.name, this.sName});

  FormationPositions.fromJson(Map<String, dynamic> json) {
    fatherPosition = json['FatherPosition'];
    iD = json['ID'];
    name = json['Name'];
    sName = json['SName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['FatherPosition'] = fatherPosition;
    data['ID'] = iD;
    data['Name'] = name;
    data['SName'] = sName;
    return data;
  }
}

class NotifiedUpdates {
  List<Params>? params;
  int? iD;
  int? entityTypeId;
  int? sportTypeID;
  String? name;
  String? title;
  String? body;
  bool? selectedByDef;
  bool? selectedByDefCompetitions;
  bool? selectedByDefAthletes;
  String? template;
  bool? isDisplayed;
  String? mobileTemplate;
  String? mobileCaptionTemplate;
  String? label;
  bool? isMajor;
  int? timeOfRelevancy;
  int? category;
  String? defaultSound;
  String? animationText;
  String? androidTemplate;
  String? androidPriority;
  String? replacementKey;
  String? groupTitle;
  String? groupBody;
  String? groupKey;
  int? replacementSoundBehavior;
  String? extendedDataUrl;
  List<RelevantEntitiesTypes>? relevantEntitiesTypes;
  String? imageUrlIOS;
  String? imageUrlAndroid;
  List<int>? autoSelectTypes;
  String? androidSettingsTitle;
  int? connectedToType;
  String? notificationCategory;
  bool? useIphoneTextForAndroid;
  int? replacementBehavior;
  String? androidNotificationText;

  NotifiedUpdates(
      {this.params,
      this.iD,
      this.entityTypeId,
      this.sportTypeID,
      this.name,
      this.title,
      this.body,
      this.selectedByDef,
      this.selectedByDefCompetitions,
      this.selectedByDefAthletes,
      this.template,
      this.isDisplayed,
      this.mobileTemplate,
      this.mobileCaptionTemplate,
      this.label,
      this.isMajor,
      this.timeOfRelevancy,
      this.category,
      this.defaultSound,
      this.animationText,
      this.androidTemplate,
      this.androidPriority,
      this.replacementKey,
      this.groupTitle,
      this.groupBody,
      this.groupKey,
      this.replacementSoundBehavior,
      this.extendedDataUrl,
      this.relevantEntitiesTypes,
      this.imageUrlIOS,
      this.imageUrlAndroid,
      this.autoSelectTypes,
      this.androidSettingsTitle,
      this.connectedToType,
      this.notificationCategory,
      this.useIphoneTextForAndroid,
      this.replacementBehavior,
      this.androidNotificationText});

  NotifiedUpdates.fromJson(Map<String, dynamic> json) {
    if (json['Params'] != null) {
      params = <Params>[];
      json['Params'].forEach((v) {
        params!.add(Params.fromJson(v));
      });
    }
    iD = json['ID'];
    entityTypeId = json['EntityTypeId'];
    sportTypeID = json['SportTypeID'];
    name = json['Name'];
    title = json['Title'];
    body = json['Body'];
    selectedByDef = json['SelectedByDef'];
    selectedByDefCompetitions = json['SelectedByDefCompetitions'];
    selectedByDefAthletes = json['SelectedByDefAthletes'];
    template = json['Template'];
    isDisplayed = json['IsDisplayed'];
    mobileTemplate = json['MobileTemplate'];
    mobileCaptionTemplate = json['MobileCaptionTemplate'];
    label = json['Label'];
    isMajor = json['IsMajor'];
    timeOfRelevancy = json['TimeOfRelevancy'];
    category = json['Category'];
    defaultSound = json['DefaultSound'];
    animationText = json['AnimationText'];
    androidTemplate = json['AndroidTemplate'];
    androidPriority = json['AndroidPriority'];
    replacementKey = json['ReplacementKey'];
    groupTitle = json['GroupTitle'];
    groupBody = json['GroupBody'];
    groupKey = json['GroupKey'];
    replacementSoundBehavior = json['ReplacementSoundBehavior'];
    extendedDataUrl = json['ExtendedDataUrl'];
    if (json['RelevantEntitiesTypes'] != null) {
      relevantEntitiesTypes = <RelevantEntitiesTypes>[];
      json['RelevantEntitiesTypes'].forEach((v) {
        relevantEntitiesTypes!.add(RelevantEntitiesTypes.fromJson(v));
      });
    }
    imageUrlIOS = json['ImageUrl_IOS'];
    imageUrlAndroid = json['ImageUrl_Android'];
    autoSelectTypes = json['AutoSelectTypes'].cast<int>();
    androidSettingsTitle = json['AndroidSettingsTitle'];
    connectedToType = json['ConnectedToType'];
    notificationCategory = json['NotificationCategory'];
    useIphoneTextForAndroid = json['UseIphoneTextForAndroid'];
    replacementBehavior = json['ReplacementBehavior'];
    androidNotificationText = json['AndroidNotificationText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (params != null) {
      data['Params'] = params!.map((v) => v.toJson()).toList();
    }
    data['ID'] = iD;
    data['EntityTypeId'] = entityTypeId;
    data['SportTypeID'] = sportTypeID;
    data['Name'] = name;
    data['Title'] = title;
    data['Body'] = body;
    data['SelectedByDef'] = selectedByDef;
    data['SelectedByDefCompetitions'] = selectedByDefCompetitions;
    data['SelectedByDefAthletes'] = selectedByDefAthletes;
    data['Template'] = template;
    data['IsDisplayed'] = isDisplayed;
    data['MobileTemplate'] = mobileTemplate;
    data['MobileCaptionTemplate'] = mobileCaptionTemplate;
    data['Label'] = label;
    data['IsMajor'] = isMajor;
    data['TimeOfRelevancy'] = timeOfRelevancy;
    data['Category'] = category;
    data['DefaultSound'] = defaultSound;
    data['AnimationText'] = animationText;
    data['AndroidTemplate'] = androidTemplate;
    data['AndroidPriority'] = androidPriority;
    data['ReplacementKey'] = replacementKey;
    data['GroupTitle'] = groupTitle;
    data['GroupBody'] = groupBody;
    data['GroupKey'] = groupKey;
    data['ReplacementSoundBehavior'] = replacementSoundBehavior;
    data['ExtendedDataUrl'] = extendedDataUrl;
    if (relevantEntitiesTypes != null) {
      data['RelevantEntitiesTypes'] =
          relevantEntitiesTypes!.map((v) => v.toJson()).toList();
    }
    data['ImageUrl_IOS'] = imageUrlIOS;
    data['ImageUrl_Android'] = imageUrlAndroid;
    data['AutoSelectTypes'] = autoSelectTypes;
    data['AndroidSettingsTitle'] = androidSettingsTitle;
    data['ConnectedToType'] = connectedToType;
    data['NotificationCategory'] = notificationCategory;
    data['UseIphoneTextForAndroid'] = useIphoneTextForAndroid;
    data['ReplacementBehavior'] = replacementBehavior;
    data['AndroidNotificationText'] = androidNotificationText;
    return data;
  }
}

class RelevantEntitiesTypes {
  String? type;
  int? entityTypeId;
  int? category;
  bool? selectedByDef;
  String? name;

  RelevantEntitiesTypes(
      {this.type,
      this.entityTypeId,
      this.category,
      this.selectedByDef,
      this.name});

  RelevantEntitiesTypes.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    entityTypeId = json['EntityTypeId'];
    category = json['Category'];
    selectedByDef = json['SelectedByDef'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Type'] = type;
    data['EntityTypeId'] = entityTypeId;
    data['Category'] = category;
    data['SelectedByDef'] = selectedByDef;
    data['Name'] = name;
    return data;
  }
}

class DateFormats {
  String? shortestDatePattern;
  String? shortDatePattern;
  String? longDatePattern;
  String? shortTimePattern;
  String? longTimePattern;
  String? fullDateTimePattern;
  String? shortTimePattern12;
  String? longTimePattern12;
  String? fullDateTimePattern24;
  String? shortTimePattern24;
  String? longTimePattern24;
  String? fullDateTimePattern12;
  int? firstDayOfWeek;
  bool? use24Clock;

  DateFormats(
      {this.shortestDatePattern,
      this.shortDatePattern,
      this.longDatePattern,
      this.shortTimePattern,
      this.longTimePattern,
      this.fullDateTimePattern,
      this.shortTimePattern12,
      this.longTimePattern12,
      this.fullDateTimePattern24,
      this.shortTimePattern24,
      this.longTimePattern24,
      this.fullDateTimePattern12,
      this.firstDayOfWeek,
      this.use24Clock});

  DateFormats.fromJson(Map<String, dynamic> json) {
    shortestDatePattern = json['ShortestDatePattern'];
    shortDatePattern = json['ShortDatePattern'];
    longDatePattern = json['LongDatePattern'];
    shortTimePattern = json['ShortTimePattern'];
    longTimePattern = json['LongTimePattern'];
    fullDateTimePattern = json['FullDateTimePattern'];
    shortTimePattern12 = json['ShortTimePattern12'];
    longTimePattern12 = json['LongTimePattern12'];
    fullDateTimePattern24 = json['FullDateTimePattern24'];
    shortTimePattern24 = json['ShortTimePattern24'];
    longTimePattern24 = json['LongTimePattern24'];
    fullDateTimePattern12 = json['FullDateTimePattern12'];
    firstDayOfWeek = json['FirstDayOfWeek'];
    use24Clock = json['Use24Clock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ShortestDatePattern'] = shortestDatePattern;
    data['ShortDatePattern'] = shortDatePattern;
    data['LongDatePattern'] = longDatePattern;
    data['ShortTimePattern'] = shortTimePattern;
    data['LongTimePattern'] = longTimePattern;
    data['FullDateTimePattern'] = fullDateTimePattern;
    data['ShortTimePattern12'] = shortTimePattern12;
    data['LongTimePattern12'] = longTimePattern12;
    data['FullDateTimePattern24'] = fullDateTimePattern24;
    data['ShortTimePattern24'] = shortTimePattern24;
    data['LongTimePattern24'] = longTimePattern24;
    data['FullDateTimePattern12'] = fullDateTimePattern12;
    data['FirstDayOfWeek'] = firstDayOfWeek;
    data['Use24Clock'] = use24Clock;
    return data;
  }
}

class LogoSources {
  String? baseURL;
  String? competitorsPath;
  String? competitionsPath;
  String? countriesPath;
  String? eventTypesPath;
  String? languagesPath;
  String? notificationTypesPath;
  String? sportTypesPath;
  String? bookmakersPath;
  String? newsSources;
  String? tVNetworks;

  LogoSources(
      {this.baseURL,
      this.competitorsPath,
      this.competitionsPath,
      this.countriesPath,
      this.eventTypesPath,
      this.languagesPath,
      this.notificationTypesPath,
      this.sportTypesPath,
      this.bookmakersPath,
      this.newsSources,
      this.tVNetworks});

  LogoSources.fromJson(Map<String, dynamic> json) {
    baseURL = json['BaseURL'];
    competitorsPath = json['CompetitorsPath'];
    competitionsPath = json['CompetitionsPath'];
    countriesPath = json['CountriesPath'];
    eventTypesPath = json['EventTypesPath'];
    languagesPath = json['LanguagesPath'];
    notificationTypesPath = json['NotificationTypesPath'];
    sportTypesPath = json['SportTypesPath'];
    bookmakersPath = json['BookmakersPath'];
    newsSources = json['NewsSources'];
    tVNetworks = json['TVNetworks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BaseURL'] = baseURL;
    data['CompetitorsPath'] = competitorsPath;
    data['CompetitionsPath'] = competitionsPath;
    data['CountriesPath'] = countriesPath;
    data['EventTypesPath'] = eventTypesPath;
    data['LanguagesPath'] = languagesPath;
    data['NotificationTypesPath'] = notificationTypesPath;
    data['SportTypesPath'] = sportTypesPath;
    data['BookmakersPath'] = bookmakersPath;
    data['NewsSources'] = newsSources;
    data['TVNetworks'] = tVNetworks;
    return data;
  }
}

class ImageSources {
  String? imageFetchURL;
  String? faceRecognitionImageFetchURL;
  String? entitiesImageURL;
  String? entitiesRoundImageURL;
  String? entitiesVersionedImageURL;
  String? entitiesVersionedRoundImageURL;
  String? entitiesTransparentBackgroundImageURL;
  String? entitiesVersionedFillCropImageURL;
  String? entitiesVersionedImageWithOverlayURL;
  List<Types>? types;

  ImageSources(
      {this.imageFetchURL,
      this.faceRecognitionImageFetchURL,
      this.entitiesImageURL,
      this.entitiesRoundImageURL,
      this.entitiesVersionedImageURL,
      this.entitiesVersionedRoundImageURL,
      this.entitiesTransparentBackgroundImageURL,
      this.entitiesVersionedFillCropImageURL,
      this.entitiesVersionedImageWithOverlayURL,
      this.types});

  ImageSources.fromJson(Map<String, dynamic> json) {
    imageFetchURL = json['ImageFetchURL'];
    faceRecognitionImageFetchURL = json['FaceRecognitionImageFetchURL'];
    entitiesImageURL = json['EntitiesImageURL'];
    entitiesRoundImageURL = json['EntitiesRoundImageURL'];
    entitiesVersionedImageURL = json['EntitiesVersionedImageURL'];
    entitiesVersionedRoundImageURL = json['EntitiesVersionedRoundImageURL'];
    entitiesTransparentBackgroundImageURL =
        json['EntitiesTransparentBackgroundImageURL'];
    entitiesVersionedFillCropImageURL =
        json['EntitiesVersionedFillCropImageURL'];
    entitiesVersionedImageWithOverlayURL =
        json['EntitiesVersionedImageWithOverlayURL'];
    if (json['Types'] != null) {
      types = <Types>[];
      json['Types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ImageFetchURL'] = imageFetchURL;
    data['FaceRecognitionImageFetchURL'] = faceRecognitionImageFetchURL;
    data['EntitiesImageURL'] = entitiesImageURL;
    data['EntitiesRoundImageURL'] = entitiesRoundImageURL;
    data['EntitiesVersionedImageURL'] = entitiesVersionedImageURL;
    data['EntitiesVersionedRoundImageURL'] = entitiesVersionedRoundImageURL;
    data['EntitiesTransparentBackgroundImageURL'] =
        entitiesTransparentBackgroundImageURL;
    data['EntitiesVersionedFillCropImageURL'] =
        entitiesVersionedFillCropImageURL;
    data['EntitiesVersionedImageWithOverlayURL'] =
        entitiesVersionedImageWithOverlayURL;
    if (types != null) {
      data['Types'] = types!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Types {
  String? key;
  String? path;
  String? extension;
  String? defaultPath;
  String? defaultFormat;
  String? defaultVersionFormat;

  Types(
      {this.key,
      this.path,
      this.extension,
      this.defaultPath,
      this.defaultFormat,
      this.defaultVersionFormat});

  Types.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    path = json['Path'];
    extension = json['Extension'];
    defaultPath = json['DefaultPath'];
    defaultFormat = json['DefaultFormat'];
    defaultVersionFormat = json['DefaultVersionFormat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Key'] = key;
    data['Path'] = path;
    data['Extension'] = extension;
    data['DefaultPath'] = defaultPath;
    data['DefaultFormat'] = defaultFormat;
    data['DefaultVersionFormat'] = defaultVersionFormat;
    return data;
  }
}

class LineTypes {
  int? iD;
  String? aliasName;
  String? name;
  String? sName;
  String? title;
  String? relatedEntityType;
  bool? prematchState;
  bool? inPlayState;
  bool? predictable;
  List<Options>? options;
  String? predictionTitle;
  int? imgVer;
  bool? homeAwayTeamOrderSensitive;
  List<int>? sportTypes;
  bool? predictionRequireOdds;
  int? parameterType;

  LineTypes(
      {this.iD,
      this.aliasName,
      this.name,
      this.sName,
      this.title,
      this.relatedEntityType,
      this.prematchState,
      this.inPlayState,
      this.predictable,
      this.options,
      this.predictionTitle,
      this.imgVer,
      this.homeAwayTeamOrderSensitive,
      this.sportTypes,
      this.predictionRequireOdds,
      this.parameterType});

  LineTypes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    aliasName = json['AliasName'];
    name = json['Name'];
    sName = json['SName'];
    title = json['Title'];
    relatedEntityType = json['RelatedEntityType'];
    prematchState = json['PrematchState'];
    inPlayState = json['InPlayState'];
    predictable = json['Predictable'];
    if (json['Options'] != null) {
      options = <Options>[];
      json['Options'].forEach((v) {
        options!.add(Options.fromJson(v));
      });
    }
    predictionTitle = json['PredictionTitle'];
    imgVer = json['ImgVer'];
    homeAwayTeamOrderSensitive = json['HomeAwayTeamOrderSensitive'];
    sportTypes = json['SportTypes'].cast<int>();
    predictionRequireOdds = json['PredictionRequireOdds'];
    parameterType = json['ParameterType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['AliasName'] = aliasName;
    data['Name'] = name;
    data['SName'] = sName;
    data['Title'] = title;
    data['RelatedEntityType'] = relatedEntityType;
    data['PrematchState'] = prematchState;
    data['InPlayState'] = inPlayState;
    data['Predictable'] = predictable;
    if (options != null) {
      data['Options'] = options!.map((v) => v.toJson()).toList();
    }
    data['PredictionTitle'] = predictionTitle;
    data['ImgVer'] = imgVer;
    data['HomeAwayTeamOrderSensitive'] = homeAwayTeamOrderSensitive;
    data['SportTypes'] = sportTypes;
    data['PredictionRequireOdds'] = predictionRequireOdds;
    data['ParameterType'] = parameterType;
    return data;
  }
}

class Options {
  int? num;
  String? name;
  String? template;
  int? competitor;
  int? order;
  String? abbreviation;
  bool? isVirtual;

  Options(
      {this.num,
      this.name,
      this.template,
      this.competitor,
      this.order,
      this.abbreviation,
      this.isVirtual});

  Options.fromJson(Map<String, dynamic> json) {
    num = json['Num'];
    name = json['Name'];
    template = json['Template'];
    competitor = json['Competitor'];
    order = json['Order'];
    abbreviation = json['Abbreviation'];
    isVirtual = json['IsVirtual'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Num'] = num;
    data['Name'] = name;
    data['Template'] = template;
    data['Competitor'] = competitor;
    data['Order'] = order;
    data['Abbreviation'] = abbreviation;
    data['IsVirtual'] = isVirtual;
    return data;
  }
}

class TVNetworks {
  int? iD;
  String? name;
  int? countryID;
  String? website;
  int? networkType;
  int? bookmaker;
  int? imgVer;

  TVNetworks(
      {this.iD,
      this.name,
      this.countryID,
      this.website,
      this.networkType,
      this.bookmaker,
      this.imgVer});

  TVNetworks.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    countryID = json['CountryID'];
    website = json['Website'];
    networkType = json['NetworkType'];
    bookmaker = json['Bookmaker'];
    imgVer = json['ImgVer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['CountryID'] = countryID;
    data['Website'] = website;
    data['NetworkType'] = networkType;
    data['Bookmaker'] = bookmaker;
    data['ImgVer'] = imgVer;
    return data;
  }
}

class VideoSources {
  int? iD;
  String? name;
  String? aliasName;
  String? uRL;
  String? hTML5Embed;
  String? thumbnailURL;
  bool? mobileSupport;
  bool? iPhoneSupport;
  bool? androidSupport;
  String? flashEmbed;
  String? mobileEmbed;

  VideoSources(
      {this.iD,
      this.name,
      this.aliasName,
      this.uRL,
      this.hTML5Embed,
      this.thumbnailURL,
      this.mobileSupport,
      this.iPhoneSupport,
      this.androidSupport,
      this.flashEmbed,
      this.mobileEmbed});

  VideoSources.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    aliasName = json['AliasName'];
    uRL = json['URL'];
    hTML5Embed = json['HTML5Embed'];
    thumbnailURL = json['ThumbnailURL'];
    mobileSupport = json['MobileSupport'];
    iPhoneSupport = json['IPhoneSupport'];
    androidSupport = json['AndroidSupport'];
    flashEmbed = json['FlashEmbed'];
    mobileEmbed = json['MobileEmbed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['AliasName'] = aliasName;
    data['URL'] = uRL;
    data['HTML5Embed'] = hTML5Embed;
    data['ThumbnailURL'] = thumbnailURL;
    data['MobileSupport'] = mobileSupport;
    data['IPhoneSupport'] = iPhoneSupport;
    data['AndroidSupport'] = androidSupport;
    data['FlashEmbed'] = flashEmbed;
    data['MobileEmbed'] = mobileEmbed;
    return data;
  }
}

class Popular {
  List<int>? competitions;
  List<int>? competitors;
  List<int>? athletes;
  Searches? searches;

  Popular({this.competitions, this.competitors, this.athletes, this.searches});

  Popular.fromJson(Map<String, dynamic> json) {
    competitions = json['Competitions'].cast<int>();
    competitors = json['Competitors'].cast<int>();
    athletes = json['Athletes'].cast<int>();
    searches =
        json['Searches'] != null ? Searches.fromJson(json['Searches']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Competitions'] = competitions;
    data['Competitors'] = competitors;
    data['Athletes'] = athletes;
    if (searches != null) {
      data['Searches'] = searches!.toJson();
    }
    return data;
  }
}

class Searches {
  List<String>? competitions;
  List<String>? competitors;

  Searches({this.competitions, this.competitors});

  Searches.fromJson(Map<String, dynamic> json) {
    competitions = json['Competitions'].cast<String>();
    competitors = json['Competitors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Competitions'] = competitions;
    data['Competitors'] = competitors;
    return data;
  }
}

class CurrTime {
  String? currTime;
  String? currTimeString;

  CurrTime({this.currTime, this.currTimeString});

  CurrTime.fromJson(Map<String, dynamic> json) {
    currTime = json['CurrTime'];
    currTimeString = json['CurrTimeString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CurrTime'] = currTime;
    data['CurrTimeString'] = currTimeString;
    return data;
  }
}
