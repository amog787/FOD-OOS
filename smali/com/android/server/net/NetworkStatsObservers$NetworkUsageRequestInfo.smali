.class Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "statsObserver"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "accessLevel"    # I

    .line 335
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    .line 336
    return-void
.end method

.method private getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 366
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v6, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mCallingUid:I

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 369
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method protected checkStats()Z
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-object v0, v0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->getTotalBytesForNetwork(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 345
    .local v0, "bytesSoFar":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-wide v2, v2, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 346
    const/4 v2, 0x1

    return v2

    .line 348
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 6
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .line 356
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mXtSnapshot:Landroid/net/NetworkStats;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveIfaces:Landroid/util/ArrayMap;

    iget-wide v4, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 358
    return-void
.end method
