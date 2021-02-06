.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final synthetic f$1:Lcom/android/server/utils/quota/UptcMap;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object p2, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$1:Lcom/android/server/utils/quota/UptcMap;

    iput p3, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$2:I

    iput-object p4, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$4:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$1:Lcom/android/server/utils/quota/UptcMap;

    iget v2, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$2:I

    iget-object v3, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$4HkN-fmWmlx7JUhhSIp_xzSqM_k;->f$4:[Z

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Landroid/util/LongArrayQueue;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$maybeUpdateStatusForPkgLocked$3$CountQuotaTracker(Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;[ZLjava/lang/String;Landroid/util/LongArrayQueue;)V

    return-void
.end method
