.class Lcom/android/server/people/prediction/SharesheetModelScorer;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    }
.end annotation


# static fields
.field static final CHOOSER_ACTIVITY:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final FOREGROUND_APP_PROMO_TIME_WINDOW:J

.field static final FOREGROUND_APP_WEIGHT:F = 0.0f

.field private static final FREQUENTLY_USED_APP_SCORE_INITIAL_DECAY:F = 0.3f

.field private static final ONE_MONTH_WINDOW:J

.field private static final RECENCY_INITIAL_BASE_SCORE:F = 0.4f

.field private static final RECENCY_SCORE_COUNT:Ljava/lang/Integer;

.field private static final RECENCY_SCORE_INITIAL_DECAY:F = 0.05f

.field private static final RECENCY_SCORE_SUBSEQUENT_DECAY:F = 0.02f

.field private static final TAG:Ljava/lang/String; = "SharesheetModelScorer"

.field private static final USAGE_STATS_CHOOSER_SCORE_INITIAL_DECAY:F = 0.9f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    .line 59
    const-class v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static computeScore(Ljava/util/List;IJ)V
    .locals 19
    .param p1, "shareEventType"    # I
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;IJ)V"
        }
    .end annotation

    .line 71
    .local p0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "totalFreqScore":F
    const/4 v1, 0x0

    .line 76
    .local v1, "freqScoreCount":I
    const/4 v2, 0x0

    .line 77
    .local v2, "totalMimeFreqScore":F
    const/4 v3, 0x0

    .line 79
    .local v3, "mimeFreqScoreCount":I
    new-instance v4, Ljava/util/PriorityQueue;

    sget-object v5, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$FzdH_f6FO3SF7BWGUjwz4-jY7oI;

    .line 81
    invoke-static {v6}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 82
    .local v4, "recencyMinHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroid/util/Pair<Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;Landroid/util/Range<Ljava/lang/Long;>;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v5, "scoreList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 84
    .local v7, "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    new-instance v8, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>(Lcom/android/server/people/prediction/SharesheetModelScorer$1;)V

    .line 85
    .local v8, "shareTargetScore":Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v9

    if-nez v9, :cond_1

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v9

    sget-object v10, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v9, v10}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    .line 91
    invoke-virtual {v9}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v9

    .line 92
    .local v9, "timeSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 93
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Range;

    .line 94
    .local v11, "timeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    nop

    .line 95
    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, p2, v12

    invoke-static {v12, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v12

    .line 94
    invoke-virtual {v8, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementFrequencyScore(F)V

    .line 96
    .end local v11    # "timeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v10

    add-float/2addr v0, v10

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 101
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v10

    move/from16 v11, p1

    invoke-interface {v10, v11}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v10

    .line 102
    invoke-virtual {v10}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v10

    .line 103
    .local v10, "timeSlotsOfSameType":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 104
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 105
    .local v13, "timeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    nop

    .line 106
    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, p2, v14

    invoke-static {v14, v15}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v14

    .line 105
    invoke-virtual {v8, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementMimeFrequencyScore(F)V

    .line 107
    .end local v13    # "timeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v12

    add-float/2addr v2, v12

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 112
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v12

    sget-object v13, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v12, v13}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v12

    .line 113
    invoke-virtual {v12}, Lcom/android/server/people/data/EventIndex;->getMostRecentActiveTimeSlot()Landroid/util/Range;

    move-result-object v12

    .line 114
    .local v12, "mostRecentTimeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v12, :cond_6

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_6
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v13

    sget-object v14, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v13, v14, :cond_7

    .line 118
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_9

    .line 119
    :cond_7
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v13

    sget-object v14, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 120
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 122
    :cond_8
    new-instance v13, Landroid/util/Pair;

    invoke-direct {v13, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v13}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 124
    .end local v7    # "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v8    # "shareTargetScore":Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    .end local v9    # "timeSlots":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    .end local v10    # "timeSlotsOfSameType":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Long;>;>;"
    .end local v12    # "mostRecentTimeSlot":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_9
    goto/16 :goto_0

    .line 83
    :cond_a
    move/from16 v11, p1

    .line 126
    :goto_3
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 127
    const v6, 0x3ecccccd    # 0.4f

    .line 128
    .local v6, "recencyScore":F
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_b

    .line 129
    const v7, 0x3eb33333    # 0.35f

    const v8, 0x3ca3d70a    # 0.02f

    .line 130
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v8

    sub-float v6, v7, v9

    .line 132
    :cond_b
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    invoke-virtual {v7, v6}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setRecencyScore(F)V

    .line 133
    .end local v6    # "recencyScore":F
    goto :goto_3

    .line 135
    :cond_c
    const/4 v6, 0x0

    if-eqz v1, :cond_d

    int-to-float v7, v1

    div-float v7, v0, v7

    goto :goto_4

    :cond_d
    move v7, v6

    :goto_4
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 136
    .local v7, "avgFreq":Ljava/lang/Float;
    if-eqz v3, :cond_e

    int-to-float v8, v3

    div-float v8, v2, v8

    goto :goto_5

    :cond_e
    move v8, v6

    :goto_5
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 137
    .local v8, "avgMimeFreq":Ljava/lang/Float;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_11

    .line 138
    move-object/from16 v10, p0

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 139
    .local v12, "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 141
    .local v13, "targetScore":Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    nop

    .line 142
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_f

    move-object/from16 v18, v7

    move-wide v6, v15

    goto :goto_7

    :cond_f
    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v14

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v17

    div-float v14, v14, v17

    move-object/from16 v18, v7

    .end local v7    # "avgFreq":Ljava/lang/Float;
    .local v18, "avgFreq":Ljava/lang/Float;
    float-to-double v6, v14

    .line 141
    :goto_7
    invoke-static {v6, v7}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeFreqScore(D)F

    move-result v6

    invoke-virtual {v13, v6}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setFrequencyScore(F)V

    .line 143
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_8

    .line 144
    :cond_10
    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v7, v14

    float-to-double v14, v7

    move-wide v15, v14

    .line 143
    :goto_8
    invoke-static/range {v15 .. v16}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeMimeFreqScore(D)F

    move-result v7

    invoke-virtual {v13, v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setMimeFrequencyScore(F)V

    .line 146
    nop

    .line 147
    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getRecencyScore()F

    move-result v7

    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v14

    invoke-static {v7, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v7

    .line 148
    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v14

    .line 147
    invoke-static {v7, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v7

    .line 146
    invoke-virtual {v13, v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setTotalScore(F)V

    .line 149
    invoke-virtual {v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getTotalScore()F

    move-result v7

    invoke-virtual {v12, v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 137
    .end local v12    # "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v13    # "targetScore":Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v18

    goto :goto_6

    .line 165
    .end local v9    # "i":I
    .end local v18    # "avgFreq":Ljava/lang/Float;
    .restart local v7    # "avgFreq":Ljava/lang/Float;
    :cond_11
    return-void
.end method

.method static computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;I)V
    .locals 0
    .param p1, "shareEventType"    # I
    .param p2, "targetsLimit"    # I
    .param p3, "now"    # J
    .param p5, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p6, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;IIJ",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 173
    .local p0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    invoke-static {p0, p1, p3, p4}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 174
    invoke-static {p0, p2, p5, p6}, Lcom/android/server/people/prediction/SharesheetModelScorer;->postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;I)V

    .line 175
    return-void
.end method

.method private static findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)Ljava/lang/String;
    .locals 9
    .param p1, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 301
    .local p0, "shareTargetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;>;"
    const/4 v0, 0x0

    .line 302
    .local v0, "sharingForegroundApp":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 303
    .local v7, "now":J
    sget-wide v1, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    sub-long v3, v7, v1

    move-object v1, p1

    move v2, p2

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/people/data/DataManager;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object v1

    .line 305
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v2, 0x0

    .line 306
    .local v2, "sourceApp":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 307
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "className":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v5}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v4, :cond_0

    sget-object v6, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    sget-object v6, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    goto :goto_1

    .line 313
    :cond_1
    if-nez v2, :cond_2

    .line 314
    move-object v2, v5

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 316
    move-object v0, v5

    .line 317
    goto :goto_2

    .line 306
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 320
    .end local v3    # "i":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getFreqDecayedOnElapsedTime(J)F
    .locals 3
    .param p0, "elapsedTimeMillis"    # J

    .line 333
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    .line 334
    .local v0, "duration":Ljava/time/Duration;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 335
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 336
    :cond_0
    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 337
    const v1, 0x3f666666    # 0.9f

    return v1

    .line 338
    :cond_1
    const-wide/16 v1, 0x7

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 339
    const v1, 0x3f4ccccd    # 0.8f

    return v1

    .line 340
    :cond_2
    const-wide/16 v1, 0xe

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 341
    const v1, 0x3f333333    # 0.7f

    return v1

    .line 343
    :cond_3
    const v1, 0x3f19999a    # 0.6f

    return v1
.end method

.method static synthetic lambda$computeScore$0(Landroid/util/Pair;)J
    .locals 2
    .param p0, "p"    # Landroid/util/Pair;

    .line 81
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$postProcess$1(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static normalizeFreqScore(D)F
    .locals 2
    .param p0, "freqRatio"    # D

    .line 349
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 350
    const v0, 0x3e4ccccd    # 0.2f

    return v0

    .line 351
    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 352
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 353
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_2

    .line 354
    const v0, 0x3dcccccd    # 0.1f

    return v0

    .line 355
    :cond_2
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_3

    .line 356
    const v0, 0x3d4ccccd    # 0.05f

    return v0

    .line 358
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static normalizeMimeFreqScore(D)F
    .locals 2
    .param p0, "freqRatio"    # D

    .line 364
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 365
    const v0, 0x3e4ccccd    # 0.2f

    return v0

    .line 366
    :cond_0
    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1

    .line 367
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 368
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_2

    .line 369
    const v0, 0x3dcccccd    # 0.1f

    return v0

    .line 371
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;I)V
    .locals 8
    .param p1, "targetsLimit"    # I
    .param p2, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p3, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;I",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 181
    .local p0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    .local v0, "shareTargetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 183
    .local v2, "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$SharesheetModelScorer$HRhV1xJrd8G3UdS1tXl1vXSbjt4;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 185
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 186
    .local v4, "targetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    const/4 v5, 0x0

    .line 187
    .local v5, "index":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 188
    invoke-virtual {v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 189
    goto :goto_2

    .line 191
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 193
    :cond_1
    :goto_2
    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 194
    .end local v2    # "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "targetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    .end local v5    # "index":I
    goto :goto_0

    .line 195
    :cond_2
    invoke-static {v0, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)V

    .line 196
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V

    .line 198
    return-void
.end method

.method private static probOR(FF)F
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 328
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p0

    sub-float v2, v0, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F
    .locals 7
    .param p3, "baseScore"    # F
    .param p4, "minValidScore"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            "Ljava/lang/Integer;",
            ">;FF)F"
        }
    .end annotation

    .line 238
    .local p0, "shareTargetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;>;"
    .local p1, "appStatsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/AppUsageStatsData;>;"
    .local p2, "countFunc":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/people/data/AppUsageStatsData;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 239
    .local v0, "maxCount":I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/AppUsageStatsData;

    .line 240
    .local v2, "data":Lcom/android/server/people/data/AppUsageStatsData;
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    .end local v2    # "data":Lcom/android/server/people/data/AppUsageStatsData;
    goto :goto_0

    .line 242
    :cond_0
    if-lez v0, :cond_4

    .line 243
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/people/data/AppUsageStatsData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    goto :goto_1

    .line 247
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 248
    .local v3, "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 249
    goto :goto_1

    .line 251
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    int-to-float v6, v0

    div-float/2addr v4, v6

    .line 252
    .local v4, "curScore":F
    invoke-virtual {v3, v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 253
    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 254
    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 264
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/people/data/AppUsageStatsData;>;"
    .end local v3    # "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v4    # "curScore":F
    :cond_3
    goto :goto_1

    .line 266
    :cond_4
    return p4
.end method

.method private static promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)V
    .locals 4
    .param p1, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 276
    .local p0, "shareTargetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "sharingForegroundApp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 281
    .local v1, "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 291
    .end local v1    # "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    :cond_0
    return-void
.end method

.method private static promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V
    .locals 12
    .param p1, "targetsLimit"    # I
    .param p2, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p3, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;I",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 208
    .local p0, "shareTargetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "validPredictionNum":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 210
    .local v1, "minValidScore":F
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 211
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 212
    .local v5, "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 216
    .end local v5    # "target":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    :cond_0
    goto :goto_1

    .line 217
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    :cond_1
    goto :goto_0

    .line 219
    :cond_2
    if-lt v0, p1, :cond_3

    .line 220
    return-void

    .line 222
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, "now":J
    sget-wide v4, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    sub-long v7, v2, v4

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 224
    move-object v5, p2

    move v6, p3

    move-wide v9, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/people/data/DataManager;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 227
    .local v4, "appStatsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/AppUsageStatsData;>;"
    sget-object v5, Lcom/android/server/people/prediction/-$$Lambda$DMVkqXFJLO7sJ5RamFQqFFai5uw;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$DMVkqXFJLO7sJ5RamFQqFFai5uw;

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, v1

    invoke-static {p0, v4, v5, v6, v1}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    move-result v1

    .line 230
    sget-object v5, Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$cimiWkq7Holbf24FNF8j5P8r50M;

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v1

    invoke-static {p0, v4, v5, v6, v1}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    .line 232
    return-void
.end method
