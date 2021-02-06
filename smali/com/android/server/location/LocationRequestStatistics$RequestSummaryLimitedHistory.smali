.class public Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestSummaryLimitedHistory"
.end annotation


# static fields
.field static final MAX_SIZE:I = 0x64


# instance fields
.field final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationRequestStatistics$RequestSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private addRequestSummary(Lcom/android/server/location/LocationRequestStatistics$RequestSummary;)V
    .locals 2
    .param p1, "summary"    # Lcom/android/server/location/LocationRequestStatistics$RequestSummary;

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method


# virtual methods
.method addRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "intervalMs"    # J

    .line 205
    new-instance v6, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v6}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->addRequestSummary(Lcom/android/server/location/LocationRequestStatistics$RequestSummary;)V

    .line 206
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 231
    .local v0, "systemElapsedOffsetMillis":J
    const-string v2, "Last Several Location Requests:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 234
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;

    .line 235
    .local v3, "requestSummary":Lcom/android/server/location/LocationRequestStatistics$RequestSummary;
    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 236
    .end local v3    # "requestSummary":Lcom/android/server/location/LocationRequestStatistics$RequestSummary;
    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 239
    return-void
.end method

.method removeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;

    .line 213
    new-instance v6, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;

    const-wide/16 v4, -0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationRequestStatistics$RequestSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v6}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->addRequestSummary(Lcom/android/server/location/LocationRequestStatistics$RequestSummary;)V

    .line 215
    return-void
.end method
