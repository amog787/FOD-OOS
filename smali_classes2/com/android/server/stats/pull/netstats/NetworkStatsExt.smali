.class public Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
.super Ljava/lang/Object;
.source "NetworkStatsExt.java"


# instance fields
.field public final ratType:I

.field public final slicedByFgbg:Z

.field public final slicedByMetered:Z

.field public final slicedByTag:Z

.field public final stats:Landroid/net/NetworkStats;

.field public final subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

.field public final transports:[I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;[IZ)V
    .locals 8
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "transports"    # [I
    .param p3, "slicedByFgbg"    # Z

    .line 44
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "transports"    # [I
    .param p3, "slicedByFgbg"    # Z
    .param p4, "slicedByTag"    # Z
    .param p5, "slicedByMetered"    # Z
    .param p6, "ratType"    # I
    .param p7, "subInfo"    # Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 54
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 57
    iput-boolean p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 58
    iput-boolean p4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    .line 59
    iput-boolean p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    .line 60
    iput p6, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 61
    iput-object p7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 62
    return-void
.end method


# virtual methods
.method public hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 68
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-object v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget-boolean v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 70
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0
.end method
