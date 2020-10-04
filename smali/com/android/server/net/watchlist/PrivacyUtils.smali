.class Lcom/android/server/net/watchlist/PrivacyUtils;
.super Ljava/lang/Object;
.source "PrivacyUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENCODER_ID_PREFIX:Ljava/lang/String; = "watchlist_encoder:"

.field private static final PROB_F:D = 0.469

.field private static final PROB_P:D = 0.28

.field private static final PROB_Q:D = 1.0

.field private static final TAG:Ljava/lang/String; = "PrivacyUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;
    .locals 9
    .param p0, "isSecure"    # Z
    .param p1, "userSecret"    # [B
    .param p3, "aggregatedResult"    # Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    .local p2, "appDigestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    .local v0, "appDigestListSize":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v1, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 93
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, "appDigest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 96
    invoke-static {p1, v3}, Lcom/android/server/net/watchlist/PrivacyUtils;->createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v4

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {v3}, Lcom/android/server/net/watchlist/PrivacyUtils;->createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v4

    :goto_1
    nop

    .line 98
    .local v4, "encoder":Landroid/privacy/DifferentialPrivacyEncoder;
    iget-object v5, p3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 101
    .local v5, "visitedWatchlist":Z
    invoke-interface {v4, v5}, Landroid/privacy/DifferentialPrivacyEncoder;->encodeBoolean(Z)[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    move v7, v8

    :cond_1
    move v6, v7

    .line 103
    .local v6, "encodedVisitedWatchlist":Z
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v3    # "appDigest":Ljava/lang/String;
    .end local v4    # "encoder":Landroid/privacy/DifferentialPrivacyEncoder;
    .end local v5    # "visitedWatchlist":Z
    .end local v6    # "encodedVisitedWatchlist":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method static createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 2
    .param p0, "appDigest"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    .line 59
    .local v0, "config":Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    invoke-static {v0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object v1

    return-object v1
.end method

.method private static createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .locals 9
    .param p0, "appDigest"    # Ljava/lang/String;

    .line 79
    new-instance v8, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "watchlist_encoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    return-object v8
.end method

.method static createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 2
    .param p0, "userSecret"    # [B
    .param p1, "appDigest"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/android/server/net/watchlist/PrivacyUtils;->createLongitudinalReportingConfig(Ljava/lang/String;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    .line 72
    .local v0, "config":Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    invoke-static {v0, p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object v1

    return-object v1
.end method
