.class Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkStatsSubscriptionsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RatTypeListener"
.end annotation


# instance fields
.field private volatile mLastCollapsedRatType:I

.field private final mMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

.field private final mSubId:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;ILjava/lang/String;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "monitor"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;
    .param p3, "subId"    # I
    .param p4, "subscriberId"    # Ljava/lang/String;

    .line 192
    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    .line 193
    iput p3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubId:I

    .line 194
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubscriberId:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 175
    iget v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 175
    iget v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    .line 175
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSubId()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubId:I

    return v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 206
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 211
    .local v0, "is5GNsa":Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, -0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 212
    .local v1, "networkType":I
    :goto_1
    invoke-static {v1}, Landroid/net/NetworkTemplate;->getCollapsedRatType(I)I

    move-result v2

    .line 213
    .local v2, "collapsedRatType":I
    iget v3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    if-ne v2, v3, :cond_3

    return-void

    .line 215
    :cond_3
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v3, :cond_4

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtype changed for sub("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkStats"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    iput v2, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    .line 220
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->access$300(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mSubscriberId:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->mLastCollapsedRatType:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;->onCollapsedRatTypeChanged(Ljava/lang/String;I)V

    .line 221
    return-void
.end method
