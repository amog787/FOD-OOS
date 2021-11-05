.class public final synthetic Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->lambda$getRatTypeForSubscriberId$2(Ljava/lang/String;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z

    move-result p1

    return p1
.end method
