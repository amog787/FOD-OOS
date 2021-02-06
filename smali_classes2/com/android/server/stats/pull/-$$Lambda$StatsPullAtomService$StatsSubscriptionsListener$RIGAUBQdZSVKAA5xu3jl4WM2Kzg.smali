.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$StatsSubscriptionsListener$RIGAUBQdZSVKAA5xu3jl4WM2Kzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$StatsSubscriptionsListener$RIGAUBQdZSVKAA5xu3jl4WM2Kzg;->f$0:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$StatsSubscriptionsListener$RIGAUBQdZSVKAA5xu3jl4WM2Kzg;->f$0:Landroid/telephony/SubscriptionInfo;

    check-cast p1, Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-static {v0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionInfo;Lcom/android/server/stats/pull/netstats/SubInfo;)Z

    move-result p1

    return p1
.end method
