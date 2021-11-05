.class Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkMetricsSnapshot"
.end annotation


# instance fields
.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/NetworkMetrics$Summary;",
            ">;"
        }
    .end annotation
.end field

.field public timeMs:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    return-void
.end method

.method static collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 4
    .param p0, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;)",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;"
        }
    .end annotation

    .line 475
    .local p2, "networkMetrics":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/metrics/NetworkMetrics;>;"
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;-><init>()V

    .line 476
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iput-wide p0, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 478
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics;->getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;

    move-result-object v2

    .line 479
    .local v2, "s":Landroid/net/metrics/NetworkMetrics$Summary;
    if-eqz v2, :cond_0

    .line 480
    iget-object v3, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v2    # "s":Landroid/net/metrics/NetworkMetrics$Summary;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 488
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 489
    .local v0, "j":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics$Summary;

    .line 490
    .local v2, "s":Landroid/net/metrics/NetworkMetrics$Summary;
    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics$Summary;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 491
    .end local v2    # "s":Landroid/net/metrics/NetworkMetrics$Summary;
    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%tT.%tL: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
