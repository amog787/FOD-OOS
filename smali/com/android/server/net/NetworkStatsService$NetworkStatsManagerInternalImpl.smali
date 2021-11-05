.class Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;
.super Lcom/android/server/net/NetworkStatsManagerInternal;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkStatsService$1;

    .line 1653
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method

.method static synthetic lambda$setStatsProviderLimitAsync$0(Ljava/lang/String;JLcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V
    .locals 1
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J
    .param p3, "cb"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    iget-object v0, p3, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    invoke-interface {v0, p0, p1, p2}, Landroid/net/netstats/provider/INetworkStatsProvider;->onSetLimit(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 1
    .param p1, "thresholdBytes"    # J

    .line 1681
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$2300(Lcom/android/server/net/NetworkStatsService;J)V

    .line 1682
    return-void
.end method

.method public forceUpdate()V
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsService;->forceUpdate()V

    .line 1687
    return-void
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1656
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkTotalBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1658
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$2100(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1658
    return-wide v2

    .line 1660
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1661
    throw v2
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1666
    const-wide/32 v0, 0x200000

    const-string v2, "getNetworkUidBytes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1668
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkStatsService;->access$2200(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1668
    return-object v2

    .line 1670
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1671
    throw v2
.end method

.method public setStatsProviderLimitAsync(Ljava/lang/String;J)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .line 1691
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatsProviderLimitAsync("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    new-instance v1, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/net/-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI;-><init>(Ljava/lang/String;J)V

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$2400(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    .line 1693
    return-void
.end method

.method public setUidForeground(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 1676
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->setUidForeground(IZ)V

    .line 1677
    return-void
.end method
