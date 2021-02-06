.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .line 1580
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 1580
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "how"    # I

    .line 1585
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 1586
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v0

    .line 1591
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1594
    .local v0, "tetherStatsVec":[Landroid/net/TetherStatsParcel;
    nop

    .line 1596
    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    array-length v5, v0

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1598
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1600
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 1602
    .local v6, "tetherStats":Landroid/net/TetherStatsParcel;
    :try_start_1
    iget-object v7, v6, Landroid/net/TetherStatsParcel;->iface:Ljava/lang/String;

    iput-object v7, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1603
    const/4 v7, -0x5

    iput v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1604
    iput v1, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1605
    iput v1, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1606
    iget-wide v7, v6, Landroid/net/TetherStatsParcel;->rxBytes:J

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1607
    iget-wide v7, v6, Landroid/net/TetherStatsParcel;->rxPackets:J

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1608
    iget-wide v7, v6, Landroid/net/TetherStatsParcel;->txBytes:J

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1609
    iget-wide v7, v6, Landroid/net/TetherStatsParcel;->txPackets:J

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1610
    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1613
    nop

    .line 1600
    .end local v6    # "tetherStats":Landroid/net/TetherStatsParcel;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1611
    .restart local v6    # "tetherStats":Landroid/net/TetherStatsParcel;
    :catch_0
    move-exception v1

    .line 1612
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid tethering stats "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1616
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6    # "tetherStats":Landroid/net/TetherStatsParcel;
    :cond_1
    return-object v2

    .line 1592
    .end local v0    # "tetherStatsVec":[Landroid/net/TetherStatsParcel;
    .end local v2    # "stats":Landroid/net/NetworkStats;
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    :catch_1
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "problem parsing tethering stats: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1622
    return-void
.end method
