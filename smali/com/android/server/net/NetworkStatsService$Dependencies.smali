.class public Lcom/android/server/net/NetworkStatsService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$makeSubscriptionsMonitor$0(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "service"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "subscriberId"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 469
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService;->handleOnCollapsedRatTypeChanged()V

    return-void
.end method


# virtual methods
.method public makeHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 456
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStats"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public makeSubscriptionsMonitor(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "service"    # Lcom/android/server/net/NetworkStatsService;

    .line 468
    new-instance v0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    new-instance v1, Lcom/android/server/net/-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE;

    invoke-direct {v1, p3}, Lcom/android/server/net/-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;)V

    return-object v0
.end method
