.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk;->f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk;->f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->lambda$onSubscriptionsChanged$1(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
