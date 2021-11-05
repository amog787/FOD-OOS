.class public Lcom/android/server/location/LocationRequestStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;,
        Lcom/android/server/location/LocationRequestStatistics$RequestSummary;,
        Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;,
        Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationStats"


# instance fields
.field public final history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

.field public final statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
            "Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    return-void
.end method


# virtual methods
.method public startRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "intervalMs"    # J
    .param p6, "isForeground"    # Z

    .line 58
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 60
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>(Lcom/android/server/location/LocationRequestStatistics$1;)V

    move-object v1, v2

    .line 62
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-static {v1, p4, p5}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V

    .line 65
    invoke-static {v1, p6}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 66
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->addRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/am/OpAppRecordInjector;->noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public stopRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 87
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_0

    .line 88
    invoke-static {v1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->removeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1, p3}, Lcom/android/server/am/OpAppRecordInjector;->noteStopGps(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public updateForeground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "isForeground"    # Z

    .line 106
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 108
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_0

    .line 109
    invoke-static {v1, p4}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 113
    :cond_0
    xor-int/lit8 v2, p4, 0x1

    invoke-static {p1, p3, v2}, Lcom/android/server/am/OpAppRecordInjector;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method
