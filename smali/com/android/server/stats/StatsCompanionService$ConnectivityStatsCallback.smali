.class final Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectivityStatsCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2717
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/stats/StatsCompanionService$1;

    .line 2717
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 2721
    iget v0, p1, Landroid/net/Network;->netId:I

    const/16 v1, 0x62

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/util/StatsLog;->write(III)I

    .line 2723
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 2727
    iget v0, p1, Landroid/net/Network;->netId:I

    const/16 v1, 0x62

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/util/StatsLog;->write(III)I

    .line 2729
    return-void
.end method
