.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE;->f$0:Lcom/android/server/net/NetworkStatsService;

    return-void
.end method


# virtual methods
.method public final onCollapsedRatTypeChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE;->f$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$Dependencies;->lambda$makeSubscriptionsMonitor$0(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V

    return-void
.end method
